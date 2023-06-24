import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../login_check/login_check.dart';
import 'state.dart';

class SplashController extends GetxController {
  SplashController();

  final state = SplashState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      kDuration1,
      () => Get.offAllNamed(LoginCheck.routeName),
    );
  }
}
