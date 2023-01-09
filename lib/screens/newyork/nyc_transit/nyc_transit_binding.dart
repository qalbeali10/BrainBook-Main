import 'package:get/get.dart';

import 'nyc_transit_controller.dart';

class NYCTransitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NYCTransitController());
  }
}
