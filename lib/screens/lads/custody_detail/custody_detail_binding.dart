import 'package:get/get.dart';

import 'custody_detail_controller.dart';

class CustodyDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustodyDetailController());
  }
}
