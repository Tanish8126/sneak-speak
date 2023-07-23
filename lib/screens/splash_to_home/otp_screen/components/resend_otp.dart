import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/auth_controller.dart';
import '../../../../../utils/constants/constants.dart';

class ResendOtp extends StatelessWidget {
  ResendOtp({super.key});

  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Didn't get OTP?",
          style: tsW(16),
        ),
        Obx(() => TextButton(
            onPressed: () => authController.resendOTP.value
                ? authController.resendOtp()
                : null,
            child: Text(
              authController.resendOTP.value
                  ? "Resend OTP"
                  : "Wait ${authController.resendAfter} seconds",
              style: tsCommon(16, kGreen),
            )))
      ],
    );
  }
}
