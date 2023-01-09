import 'package:brainbook/screens/main/dead_checklist/dead_checklist_controller.dart';
import 'package:get/get.dart';

class DeadChecklistBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeadCheckListController());
  }
}
