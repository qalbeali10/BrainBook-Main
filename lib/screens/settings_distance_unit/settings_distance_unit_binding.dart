import 'package:brainbook/screens/settings_distance_unit/settings_distance_unit_controller.dart';
import 'package:get/get.dart';

class SettingsDistanceUnitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsDistanceUnitController());
  }
}
