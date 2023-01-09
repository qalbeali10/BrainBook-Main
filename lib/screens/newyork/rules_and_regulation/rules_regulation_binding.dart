import 'package:get/get.dart';

import 'rules_regulation_controller.dart';

class RulesRegulationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RulesRegulationController());
  }
}
