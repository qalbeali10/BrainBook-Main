import 'package:brainbook/screens/illinois/weapons/weapons_controller.dart';
import 'package:get/get.dart';

class WeaponsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeaponsController());
  }
}
