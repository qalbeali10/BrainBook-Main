import 'package:brainbook/screens/password_update/password_update_controller.dart';
import 'package:get/get.dart';

class PasswordUpdateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordUpdateControler());
  }
}
