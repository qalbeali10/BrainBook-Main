import 'package:brainbook/screens/main/window_tint_laws/window_tint_laws_controller.dart';
import 'package:get/get.dart';

class WindowTintLawsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WindowTintLawsController());
  }
}
