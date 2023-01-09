import 'package:brainbook/screens/illinois/isp_districts/isp_districts_controller.dart';
import 'package:get/get.dart';

class ISPDistrictsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ISPDistrictsController());
  }
}
