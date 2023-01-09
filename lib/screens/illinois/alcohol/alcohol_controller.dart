import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AlcoholController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String>  alcoholList = [
    "DUI - Alcohol",
    "DUI - B.A.L over .08",
    "DUI - Resulting in Fatality",
    "DUI - Resulting in great bodily harm",
    "Bring alcohol into jail/prison",
    "Permit a DUI to occur",
    "Sell to minor",
  ];
}