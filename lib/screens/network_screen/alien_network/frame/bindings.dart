import 'package:get/get.dart';

import 'controller.dart';

class AlienNetworkBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlienNetworkController());
  }
}
