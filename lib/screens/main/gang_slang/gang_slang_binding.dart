import 'package:brainbook/screens/main/gang_slang/gang_slang_controller.dart';
import 'package:get/get.dart';

class GangSlanBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GangSlangController());
  }
}
