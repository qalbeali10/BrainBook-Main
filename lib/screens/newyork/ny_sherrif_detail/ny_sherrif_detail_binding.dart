import 'package:get/get.dart';

import 'ny_sherrif_detail_controller.dart';

class NYSherrifDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NYSherrifDetailController());
  }
}
