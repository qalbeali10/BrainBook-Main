import 'package:brainbook/screens/lads/shad_49/shad_49_controller.dart';
import 'package:get/get.dart';

class SHAD49Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SHAD49Controller());
  }
}
