import 'package:get/get.dart';

import 'sample_reports_controller.dart';

class SampleReportsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SampleReportsController());
  }
}
