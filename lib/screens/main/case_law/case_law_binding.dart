import 'package:brainbook/screens/main/case_law/case_law_controller.dart';
import 'package:get/get.dart';

class CaseLawBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CaseLawController());
  }
}
