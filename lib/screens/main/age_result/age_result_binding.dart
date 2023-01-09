import 'package:get/get.dart';

import 'age_result_controller.dart';

class AgeResultBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgeResultController());
  }
}
