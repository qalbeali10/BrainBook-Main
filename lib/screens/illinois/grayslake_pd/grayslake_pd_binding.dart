import 'package:get/get.dart';

import 'grayslake_pd_controller.dart';

class GrayslakePDBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GrayslakePDController());
  }
}
