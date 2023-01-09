import 'package:brainbook/screens/location_more_information/location_more_information_controller.dart';
import 'package:get/get.dart';

class LocationMoreInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationMoreInfoController());
  }
}
