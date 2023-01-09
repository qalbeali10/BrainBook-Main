import 'package:get/get.dart';

import 'wic_codes_controller.dart';

class WICCodesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WICCodesController());
  }
}
