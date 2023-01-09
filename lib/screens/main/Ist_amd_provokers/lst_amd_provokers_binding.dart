import 'package:brainbook/screens/main/Ist_amd_provokers/Ist_amd_provokers_controller.dart';
import 'package:get/get.dart';

class IstAmdProvokersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IstAmdProvokersController());
  }
}
