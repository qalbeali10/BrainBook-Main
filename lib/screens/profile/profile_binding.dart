import 'package:brainbook/screens/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => ProfileController(userProvider: UserProvider()));
    Get.put(ProfileController());
  }
}
