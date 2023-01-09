import 'package:get/get.dart';

import 'cell_phones_controller.dart';

class CellPhonesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CellPhonesController());
  }
}
