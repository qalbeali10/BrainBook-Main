import 'package:get/get.dart';

import 'front_plates_controller.dart';

class FrontPlatesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrontPlatesController());
  }
}
