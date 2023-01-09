import 'package:brainbook/screens/go_offline/go_offline_controller.dart';
import 'package:get/get.dart';

class GoOfflineBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoOfflineController());
  }
}
