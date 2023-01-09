import 'package:brainbook/screens/main/federal_codes/federal_code_controller.dart';
import 'package:get/get.dart';

class FederalCodeBiding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FederalCodeController());
  }
}
