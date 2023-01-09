import 'package:get/get.dart';

import 'ny_state_detail_controller.dart';

class NYStateDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NYStateDetailController());
  }
}
