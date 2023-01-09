import 'package:get/get.dart';

import 'isp_districts_details_controller.dart';

class ISPDistrictDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ISPDistrictsDetailsController());
  }
}
