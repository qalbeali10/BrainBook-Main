import 'package:brainbook/screens/main/exigent_circumstances/exigent_circumstances_controller.dart';
import 'package:get/get.dart';

class ExigentCircumstancesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExigentCircumstanceController());
  }
}
