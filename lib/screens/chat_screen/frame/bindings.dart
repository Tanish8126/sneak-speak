import 'package:get/get.dart';

import 'controller.dart';

class ChatScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatScreenController());
  }
}
