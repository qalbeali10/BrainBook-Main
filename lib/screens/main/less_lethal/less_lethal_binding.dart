import 'package:get/get.dart';

import 'less_lethal_controller.dart';

class LessLethalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LessLethalController());
  }
}
