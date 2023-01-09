import 'package:get/get.dart';

import 'broadcasts_controller.dart';

class BroadcastsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BroadcastsController());
  }
}
