import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesController extends GetxController{

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String> favListTitle = [
    "Gang Slang",
    "Translate (French)",
  ];

  List<String> favListSubtitle = [
    "9 Mile",
    "Againt a wall",
  ];
}