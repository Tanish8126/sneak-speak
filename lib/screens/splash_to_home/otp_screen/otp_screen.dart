import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth_controller.dart';
import '../../../../utils/constants/constants.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otpscreen";
  final authController = Get.put(AuthController());

  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back,
                  size: getProportionateScreenHeight(40), color: kBlack),
              onPressed: () {
                authController.isOtpSent.value = false;
                Get.back();
              },
            ),
            backgroundColor: kWhite,
          ),
          body: const Body()),
    );
  }
}
