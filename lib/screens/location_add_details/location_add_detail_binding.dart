import 'package:brainbook/screens/location_add_details/location_add_details_controller.dart';
import 'package:get/get.dart';

class LocationAddDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationAddDetailsController());
  }
}
