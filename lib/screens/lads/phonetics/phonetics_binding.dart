import 'package:brainbook/screens/lads/phonetics/phonetics_controller.dart';
import 'package:get/get.dart';

class PhoneticsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneticsController());
  }
}
