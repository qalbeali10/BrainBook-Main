import 'package:get/get.dart';

import 'court_no_controller.dart';

class CourtNoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CourtNoController());
  }
}
