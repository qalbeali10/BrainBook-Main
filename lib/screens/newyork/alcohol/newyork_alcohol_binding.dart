import 'package:get/get.dart';

import 'newyork_alcohol_controller.dart';

class NewYorkAlcoholBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewYorkAlcoholController());
  }
}
