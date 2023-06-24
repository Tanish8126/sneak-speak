import 'package:get/get.dart';

import 'controller.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
