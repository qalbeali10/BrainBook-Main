import 'package:brainbook/screens/main/pta_tracker_detail/pta_tracker_detail_controller.dart';
import 'package:get/get.dart';

class PtaTrackerDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PtaTrackerDetailController());
  }
}
