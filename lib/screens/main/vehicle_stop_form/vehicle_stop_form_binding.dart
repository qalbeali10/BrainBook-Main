import 'package:brainbook/screens/main/vehicle_stop_form/vehicle_stop_form_controller.dart';
import 'package:get/get.dart';

class VehicleStopFormBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VehicleStopFormController());
  }
}
