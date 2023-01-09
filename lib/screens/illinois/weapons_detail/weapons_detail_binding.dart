import 'package:brainbook/screens/illinois/weapons_detail/weapons_detail_controller.dart';
import 'package:get/get.dart';

class WeaponDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeaponDetailController());
  }
}
