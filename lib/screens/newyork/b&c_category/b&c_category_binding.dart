// ignore_for_file: file_names

import 'package:get/get.dart';

import 'b&c_category_controller.dart';

class BandCCategoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BandCCategoryController());
  }
}
