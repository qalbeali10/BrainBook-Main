import 'package:get/get.dart';

import 'forgot_password_controller.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ForogtPasswordContoller());
    // Get.lazyPut(() => ForogtPasswordContoller(userProvider: UserProvider()));
  }
}
