import 'package:brainbook/screens/illinois/will_county/will_county_controller.dart';
import 'package:get/get.dart';

class WillCountyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WillCountyController());
  }
}
