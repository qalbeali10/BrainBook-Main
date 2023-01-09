import 'package:brainbook/screens/main/age_calculation/age_calculation_controller.dart';
import 'package:get/get.dart';

class AgeCalculationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgeCalcutaionController());
  }
}
