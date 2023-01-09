import 'package:brainbook/screens/settings_location/settings_location_controller.dart';
import 'package:get/get.dart';

class SettingsLocationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsLocationController());
  }
}
