import 'package:get/get.dart';

import 'port_authority_controller.dart';

class PortAuthorityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PortAuthorityController());
  }
}
