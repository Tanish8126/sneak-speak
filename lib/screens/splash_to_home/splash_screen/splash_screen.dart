import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/constants.dart';
import 'components/body.dart';
import 'frame/index.dart';

class SplashScreen extends GetView<SplashController> {
  static String routeName = '/firstsplash';
  SplashScreen({super.key});
  @override
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
