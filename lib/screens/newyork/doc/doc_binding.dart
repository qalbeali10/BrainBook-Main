import 'package:brainbook/screens/newyork/doc/doc_controller.dart';
import 'package:get/get.dart';

class DOCBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DOCController());
  }
}
