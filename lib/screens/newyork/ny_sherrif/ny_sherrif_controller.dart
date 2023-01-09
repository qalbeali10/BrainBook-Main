

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NYSherrifController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String>  nySherrifList = [
    " Albany County Sheriff’s Department",
    " Allegany County Sheriff’s Department",
    "Broome County Sheriff’s Department",
    "Cattaraugus County Sheriff’s Department",
    "Cayuga County Sheriff’s Department",
    "Chautauqua County Sheriff’s Department",
    "Chemung County Sheriff’s Department",
  ];
}