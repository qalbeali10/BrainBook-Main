import 'package:get/get.dart';

import 'joliet_pd_controller.dart';

class JolietPDBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JolietPDController());
  }
}
