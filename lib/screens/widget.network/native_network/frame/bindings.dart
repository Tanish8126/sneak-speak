import 'package:get/get.dart';

import 'controller.dart';

class NativeNetworkBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NativeNetworkController());
  }
}
