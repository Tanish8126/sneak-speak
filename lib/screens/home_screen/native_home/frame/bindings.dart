import 'package:get/get.dart';

import 'controller.dart';

class NativeHomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NativeHomeController());
  }
}
