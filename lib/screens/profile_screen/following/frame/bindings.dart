import 'package:get/get.dart';

import 'controller.dart';

class FoloowingsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FoloowingsController());
  }
}
