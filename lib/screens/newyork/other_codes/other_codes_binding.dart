import 'package:get/get.dart';

import 'other_codes_controller.dart';

class OtherCodesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtherCodesController());
  }
}
