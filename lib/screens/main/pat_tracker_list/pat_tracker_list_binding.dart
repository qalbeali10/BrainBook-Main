import 'package:brainbook/screens/main/pat_tracker_list/pat_tracker_list_controller.dart';
import 'package:get/get.dart';

class PatTrackerListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PATTrackerListController());
  }
}
