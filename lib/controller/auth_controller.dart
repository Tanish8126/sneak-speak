import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../resources/post_data_methods.dart';
import '../screens/main_screen/main_screen.dart';
import '../utils/constants/constants.dart';
import '../utils/snackbar.dart';

class AuthController extends GetxController with StateMixin {
  final _auth = FirebaseAuth.instance;

  var showPrefix = false.obs;
  RxBool isLoading = false.obs;
  var phoneNo = "".obs;
  var otp = "".obs;
  var isOtpSent = false.obs;
  var resendAfter = 30.obs;
  var resendOTP = false.obs;
  var firebaseVerificationId = "";
  var statusMessage = "".obs;
  var statusMessageColor = kBlack.obs;

  dynamic timer;

  AuthController();

  // void checkLogin() async {
  //   final SharedPreferences s = await SharedPreferences.getInstance();
  //   isLogin = s.getBool("is_login") ?? false;
  // }

  getOtp(context) async {
    change(null, status: RxStatus.loading());

    isLoading.value = true;
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: '+91${phoneNo.value}',
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {
          throw Exception(e.message);
        },
        codeSent: (String verificationId, int? resendToken) {
          firebaseVerificationId = verificationId;
          isOtpSent.value = true;
          statusMessage.value = "OTP sent to +91${phoneNo.value}";
          startResendOtpTimer();
          isLoading.value = false;
          update();
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message.toString());
    }
  }

  resendOtp() async {
    resendOTP.value = false;
    _auth.verifyPhoneNumber(
      phoneNumber: '+91${phoneNo.value}',
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        firebaseVerificationId = verificationId;
        isOtpSent.value = true;
        statusMessage.value = "OTP re-sent to +91${phoneNo.value}";
        startResendOtpTimer();
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  verifyOTP() async {
    try {
      statusMessage.value = "Verifying... ${otp.value}";
      // Create a PhoneAuthCredential with the code
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: firebaseVerificationId, smsCode: otp.value);
      // Sign the user in (or link) with the credential
      await _auth.signInWithCredential(credential).then((value) {
        if (value.user != null) {
          final useruid = value.user!.uid;
          final timestamp = value.user!.metadata.creationTime;
          PostDataMethods().postMobileData(useruid, phoneNo.value, timestamp!);
          Get.toNamed(MainScreen.routeName);
        }
      });
    } on FirebaseAuthException catch (e) {
      showSnackBar(Get.context!, e.message.toString());
    }
  }

  startResendOtpTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (resendAfter.value != 0) {
        resendAfter.value--;
      } else {
        resendAfter.value = 30;
        resendOTP.value = true;
        timer.cancel();
      }
      update();
    });
  }
}
