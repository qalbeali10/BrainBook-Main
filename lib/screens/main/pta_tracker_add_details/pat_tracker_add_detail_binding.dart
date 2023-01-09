import 'package:brainbook/screens/main/pta_tracker_add_details/pta_tracker_add_details_controller.dart';
import 'package:get/get.dart';

class PatTrackerAddDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PATTrackerAddDetailController());
  }
}
