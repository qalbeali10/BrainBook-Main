// ignore_for_file: file_names

import 'package:get/get.dart';

import '49_face_page_controller.dart';

class FacePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FacePageController());
  }
}
