import 'package:brainbook/screens/main/flash_card_add_details/flash_card_add_details_controller.dart';
import 'package:get/get.dart';

class FlashCardAddDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashCardAddDetailsController());
  }
}
