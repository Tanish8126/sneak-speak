import 'package:get/get.dart';

import 'controller.dart';

class MessagesBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessagesController());
  }
}
