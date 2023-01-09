import 'package:get/get.dart';

import 'testifying_tips_controller.dart';

class TestifyingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TestifyingTipsController());
  }
}
