import 'package:get/get.dart';

import 'testimonies_controller.dart';

class TestimoniesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TestimoniesController());
  }
}
