import 'package:get/get.dart';

import 'common_codes_controller.dart';

class CommonCodesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommonCodesController());
  }
}
