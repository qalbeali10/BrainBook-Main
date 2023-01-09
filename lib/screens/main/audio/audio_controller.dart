
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class AudioController extends GetxController{
  final FlutterTts flutterTts = FlutterTts();

  var sliderValue = 0.0.obs;

  speak(String text) async {
    await flutterTts.setLanguage("fr-FR");
    await flutterTts.setPitch(1.0);
    await flutterTts.speak(text);
    await flutterTts.setVolume(0.9);
  }
}