import 'package:get/get.dart';

import 'controller.dart';

class FollowersBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowersController());
  }
}
