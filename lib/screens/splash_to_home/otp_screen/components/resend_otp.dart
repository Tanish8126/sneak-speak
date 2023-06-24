import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/auth_controller.dart';
import '../../../../../utils/constants/constants.dart';

class ResendOtp extends StatelessWidget {
  ResendOtp({super.key});

  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Didn't recieve the code?",
          style: tsB(18),
        ),
        sw01,
        Obx(() => TextButton(
            // style: tb,
            onPressed: () => authController.resendOTP.value
                ? authController.resendOtp()
                : null,
            child: Text(
              authController.resendOTP.value
                  ? "Resend OTP"
                  : "Wait ${authController.resendAfter} seconds",
              style: tsB(16),
            )))
      ],
    );
  }
}
