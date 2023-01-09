import 'package:brainbook/screens/illinois/dupage_county/dupage_county_controller.dart';
import 'package:get/get.dart';

class DupageCountyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DupageCountyController());
  }
}
