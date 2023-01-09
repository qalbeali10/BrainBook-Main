import 'package:get/get.dart';

import 'keys_to_castle_controller.dart';

class KeysToCastleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KeysToCastleController());
  }
}
