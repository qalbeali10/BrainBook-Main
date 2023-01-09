import 'package:get/get.dart';
import 'chp_offices_controller.dart';

class CHPOfficersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CHPOfficersController());
  }
}
