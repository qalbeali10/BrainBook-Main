import 'package:get/get.dart';

import 'case_law_detail_controller.dart';

class CaseLawDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CaseLawDetailController());
  }
}
