import 'package:get/get.dart';

import 'gang_slang_detail_controller.dart';

class GangSlangDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GangDetailController());
  }
}
