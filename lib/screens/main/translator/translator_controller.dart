import 'package:brainbook/routes/app_routes.dart';
import 'package:get/get.dart';

class TranslatorController extends GetxController{

  List SpeakList =[
    "Pakistan",
    "Spanish",
    "French",
    "Spanish",
    "French",
    "Spanish",
    "French",
    "Spanish",
  ];
  List PointList =[
    "French",
    "Spanish",
    "French",
    "Spanish",
  ];

  List SpeakImagesList = [
    "assets/startpage/34.png",
    "assets/startpage/35.png",
    "assets/startpage/36.png",
    "assets/startpage/37.png",
    "assets/startpage/38.png",
    "assets/startpage/39.png",
    "assets/startpage/40.png",
    "assets/startpage/41.png",
  ];
  List PointImagesList = [
    "assets/startpage/34.png",
    "assets/startpage/35.png",
    "assets/startpage/36.png",
    "assets/startpage/37.png",
  ];


  List<String> routes = [
    Routes.commonPhraseScreen
    //CommonPhraseScreen(),


  ];
}