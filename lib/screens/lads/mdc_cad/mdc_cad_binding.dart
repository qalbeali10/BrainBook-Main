import 'package:get/get.dart';

import 'mdc_cad_controller.dart';

class MDCBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MDCController());
  }
}
