import 'package:brainbook/screens/signup/signup_controller.dart';
import 'package:get/get.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => SignUpController(userProvider: UserProvider()));
    Get.put(SignUpController());
  }
}
