import 'package:get/get.dart';

import 'stat_codes_controller.dart';

class StatCodesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StatCodesController());
  }
}
