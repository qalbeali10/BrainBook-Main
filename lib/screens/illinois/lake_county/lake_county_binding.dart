import 'package:get/get.dart';

import 'lake_county_controller.dart';

class LakeCountryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LakeCountryController());
  }
}
