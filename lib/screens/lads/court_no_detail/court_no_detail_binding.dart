import 'package:get/get.dart';

import 'court_no_detail_controller.dart';

class CourtNoDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CourtNoDetailController());
  }
}
