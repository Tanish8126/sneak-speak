import 'package:get/get.dart';

import 'controller.dart';

class PhoneAuthScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneAuthScreenController());
  }
}
