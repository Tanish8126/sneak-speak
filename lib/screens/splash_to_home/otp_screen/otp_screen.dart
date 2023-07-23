import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth_controller.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otpscreen";
  final authController = Get.put(AuthController());

  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: Body()),
    );
  }
}
