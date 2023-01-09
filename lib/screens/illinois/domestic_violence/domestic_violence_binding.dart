import 'package:brainbook/screens/illinois/domestic_violence/domestic_violence_controller.dart';
import 'package:get/get.dart';

class DomesticViolenceBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DomesticViolenceController());
  }
}
