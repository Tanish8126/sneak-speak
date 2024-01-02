import 'package:get/get.dart';

import 'controller.dart';

class JoinedSubgroupBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JoinedSubgroupController());
  }
}
