import 'package:get/get.dart';

import 'alcohol_detail_controller.dart';

class AlcoholDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlcoholDetailController());
  }
}
