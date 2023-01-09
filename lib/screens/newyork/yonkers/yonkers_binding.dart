import 'package:get/get.dart';

import 'yonkers_controller.dart';

class YonkersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YonkersController());
  }
}
