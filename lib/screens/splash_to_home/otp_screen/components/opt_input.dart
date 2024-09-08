import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      width: getProportionateScreenHeight(20),
      height: getProportionateScreenWidth(60),
      textStyle: tsPW(26, FontWeight.bold));

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '(${authController.phoneNo})',
                style: tsWW(18, FontWeight.w700),
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: SvgPicture.asset("assets/icons/pen.svg"))
            ],
          ),
          sh02,
          Pinput(
            preFilledWidget: Text(
              "3",
              style: tsCommonW(26, FontWeight.bold, kButton),
            ),
            length: 6,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme,
            errorPinTheme: defaultPinTheme,
            controller: _pinPutController,
            pinContentAlignment: Alignment.center,
            pinAnimationType: PinAnimationType.fade,
            validator: (value) {
              vPhoneValidator.hasMatch(value!) ? null : fPhoneNumber;
              return null;
            },
          ),
          ResendOtp(),
          sh05,
          DefaultButton(
            text: 'Continue',
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
        ],
      ),
    );
  }
}
