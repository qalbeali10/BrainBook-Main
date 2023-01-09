import 'package:get/get.dart';

import 'crowd_disbursement_controller.dart';

class CrowDisbursementBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CrowDisbursementController());
  }
}
