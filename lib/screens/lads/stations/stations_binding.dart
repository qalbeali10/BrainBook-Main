import 'package:get/get.dart';

import 'stations_controller.dart';

class StationsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StationsController());
  }
}
