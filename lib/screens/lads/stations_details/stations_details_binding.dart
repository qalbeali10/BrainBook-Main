import 'package:get/get.dart';

import 'stations_details_controller.dart';

class StationsDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StationsDetailController());
  }
}
