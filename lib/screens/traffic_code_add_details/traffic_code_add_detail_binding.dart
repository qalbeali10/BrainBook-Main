import 'package:brainbook/screens/traffic_code_add_details/traffic_code_add_details_controller.dart';
import 'package:get/get.dart';

class TrafficAddDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrafficCodeAddDetailsController());
  }
}
