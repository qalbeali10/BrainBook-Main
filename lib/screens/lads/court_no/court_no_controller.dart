

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CourtNoController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String>  courtNoList = [
    "Airport - Municipals Court",
    "Alhambra - Municipals Court",
    "Bellflower - Municipals Court",
    "Beverly Hills - Municipals Court",
    "Burbank - Municipals Court",
    "Calabasas - Municipals Court",
  ];
}