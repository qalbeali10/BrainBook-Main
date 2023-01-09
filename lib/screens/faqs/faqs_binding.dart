import 'package:brainbook/screens/faqs/faqs_controller.dart';
import 'package:get/get.dart';

class FAQsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FAQsController());
  }
}
