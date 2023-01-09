import 'package:get/get.dart';

import 'cicero_pd_controller.dart';

class CiceroPDBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CiceroPDController());
  }
}
