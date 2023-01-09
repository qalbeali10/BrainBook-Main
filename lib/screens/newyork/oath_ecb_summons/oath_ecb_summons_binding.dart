import 'package:brainbook/screens/newyork/oath_ecb_summons/oath_ecb_summons_controller.dart';
import 'package:get/get.dart';

class OATHECBSummonsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OATHECBSummonsController());
  }
}
