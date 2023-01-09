import 'package:get/get.dart';

import 'mile_markers_controller.dart';

class MileMarkersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MileMarkersController());
  }
}
