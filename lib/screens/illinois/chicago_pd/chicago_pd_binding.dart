import 'package:brainbook/screens/illinois/chicago_pd/chicago_pd_controller.dart';
import 'package:get/get.dart';

class ChicagoPDBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChicagoPDController());
  }
}
