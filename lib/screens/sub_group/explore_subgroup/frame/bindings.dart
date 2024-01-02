import 'package:get/get.dart';

import 'controller.dart';

class ExploreSubgroupBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreSubgroupController());
  }
}
