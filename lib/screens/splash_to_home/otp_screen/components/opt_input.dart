import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../../../controller/auth_controller.dart';
import '../../../../../utils/constants/constants.dart';
import '../../../../../utils/snackbar.dart';
import '../../../../utils/default_button.dart';
import 'resend_otp.dart';

class OtpInput extends StatelessWidget {
  OtpInput({super.key});
  final _formKey = GlobalKey<FormState>();
  final authController = Get.put(AuthController());
  final TextEditingController _pinPutController = TextEditingController();

  final defaultPinTheme = PinTheme(
      width: getProportionateScreenHeight(60),
      height: getProportionateScreenWidth(60),
      textStyle: tsB(20),
      decoration: BoxDecoration(
        color: kBlack.withOpacity(0.2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ));

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'OTP sent to your mobile number.\n +91-${authController.phoneNo}',
            style: tsBW(18, FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          sh02,
          Pinput(
            length: 6,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme,
            errorPinTheme: defaultPinTheme,
            androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
            controller: _pinPutController,
            pinContentAlignment: Alignment.center,
            pinAnimationType: PinAnimationType.fade,
            validator: (value) {
              vPhoneValidator.hasMatch(value!) ? null : fPhoneNumber;
              return null;
            },
          ),
          sh05,
          DefaultButton(
            text: 'Verify',
            size: 18,
            press: () {
              if (_formKey.currentState!.validate()) {
                authController.otp.value = _pinPutController.text;
                authController.verifyOTP();
              } else {
                showSnackBar(context, "Enter 6-Digit Otp");
              }
            },
          ),
          sh03,
          ResendOtp()
        ],
      ),
    );
  }
}
