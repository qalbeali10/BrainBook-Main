import 'package:brainbook/screens/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
    // Get.lazyPut(() => LoginController(userProvider: UserProvider()));
  }
}
