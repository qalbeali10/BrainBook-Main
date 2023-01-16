import 'package:brainbook/screens/ask_a_cop/ask_a_cop_controller.dart';
import 'package:brainbook/screens/dash_board/dash_board_controller.dart';
import 'package:brainbook/screens/farorites/favorites_controller.dart';
import 'package:brainbook/screens/home/home_screen_controller.dart';
import 'package:brainbook/screens/more/more_controller.dart';
import 'package:brainbook/screens/notebook/notebook_controller.dart';
import 'package:get/get.dart';

class DashBoardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashBoardController());
    Get.lazyPut(() => HomeController(countryId: '', stateId: ''));
    Get.lazyPut(() => FavoritesController());
    Get.lazyPut(() => AskACopController());
    Get.lazyPut(() => NoteBookController());
    Get.lazyPut(() => MoreOptionController());
  }
}
