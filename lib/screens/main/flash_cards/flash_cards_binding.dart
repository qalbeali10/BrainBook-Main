import 'package:brainbook/screens/main/flash_cards/flash_cards_controller.dart';
import 'package:get/get.dart';

class FlashCardsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashCardController());
  }
}
