


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustodyController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String>  custodyList = [
    "CRDF",
    "EAST",
    "IRC",
    "LCMC",
    "MCJ",
    "MIRA LOMA",
    "NCCF",
  ];
}