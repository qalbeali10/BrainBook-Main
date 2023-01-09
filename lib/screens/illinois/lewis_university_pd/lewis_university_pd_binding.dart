import 'package:get/get.dart';

import 'lewis_university_pd_controller.dart';

class LewisUniversityPDBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LewisUniversityPDController());
  }
}
