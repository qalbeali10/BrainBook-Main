import 'package:get/get.dart';

import 'bellwood_pd_controller.dart';

class BellwoodPDBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BellwoodPDController());
  }
}
