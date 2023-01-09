import 'package:brainbook/screens/main/trespasser_add_details/trespasser_add_details_controller.dart';
import 'package:get/get.dart';

class TrespasserAddDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddTrespasserDetailsController());
  }
}
