import 'package:get/get.dart';
import 'warrents_controller.dart';

class WarrantsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WarrantsController());
    //Get.put(HomeController(''));
  }
}
