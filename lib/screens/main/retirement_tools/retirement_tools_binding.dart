import 'package:brainbook/screens/main/retirement_tools/retirement_tools_controller.dart';
import 'package:get/get.dart';

class RetirementToolsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RetirementToolsController());
  }
}
