import 'package:brainbook/screens/main/trespasser_apb_details/trespasser_apb_details_controller.dart';
import 'package:get/get.dart';

class TrespasserApbDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrespasserApbDetailsController());
  }
}
