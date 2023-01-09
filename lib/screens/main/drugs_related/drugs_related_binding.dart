import 'package:brainbook/screens/main/drugs_related/drugs_related_controller.dart';
import 'package:get/get.dart';

class DrugsRelatedBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrugsRelatedController());
  }
}
