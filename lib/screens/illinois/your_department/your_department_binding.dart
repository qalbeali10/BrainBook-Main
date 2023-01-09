import 'package:brainbook/screens/illinois/your_department/your_department_controller.dart';
import 'package:get/get.dart';

class YourDeptBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => YourDeptController());
  }
}
