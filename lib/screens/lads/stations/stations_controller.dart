
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StationsController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String>  stationsList = [
    "Altadena",
    "Avalon",
    "Carson",
    "Cerritos",
    "Century",
    "Compton",
    "Crescenta Valley",
  ];
}