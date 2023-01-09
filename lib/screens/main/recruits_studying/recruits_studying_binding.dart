import 'package:get/get.dart';
import 'recruits_studying_controller.dart';

class RecruitsStudyingBunding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecruitsStudyingController());
  }
}
