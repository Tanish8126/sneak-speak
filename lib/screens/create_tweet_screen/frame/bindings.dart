import 'package:get/get.dart';

import 'controller.dart';

class CreateTweetBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateTweetController());
  }
}
