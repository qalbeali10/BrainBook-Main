import 'package:brainbook/screens/main/audio/audio_controller.dart';
import 'package:get/get.dart';

class AudioBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AudioController());
  }

}