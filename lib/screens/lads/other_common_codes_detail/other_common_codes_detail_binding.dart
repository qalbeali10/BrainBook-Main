import 'package:get/get.dart';

import 'other_common_codes_detail_controller.dart';

class OCCDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OCCDetailController());
  }
}
