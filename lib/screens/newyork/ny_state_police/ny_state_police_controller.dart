
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NYStatePoliceController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String>  nyStateList = [
    "Albany",
    "Allegany",
    "Broome",
    "Cattaraugus",
    "Cayuga",
    "Chautauqua",
    "Chemung",
  ];
}