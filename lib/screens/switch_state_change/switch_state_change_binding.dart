import 'package:brainbook/screens/switch_state_change/switch_state_change_controller.dart';
import 'package:get/get.dart';

class SwitchStateChangeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SwitchStateChangeController());
  }
}
