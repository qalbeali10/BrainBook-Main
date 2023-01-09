import 'package:get/get.dart';

import 'taxi_and_limo_controller.dart';

class TaxiLimoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaxiLimoController());
  }
}
