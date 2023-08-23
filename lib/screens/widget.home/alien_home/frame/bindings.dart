import 'package:get/get.dart';

import 'controller.dart';

class AlienHomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlienHomeController());
  }
}
