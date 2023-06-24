import 'package:get/get.dart';

import 'controller.dart';

class OtpScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpScreenController());
  }
}
