import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrafficCodeController extends GetxController{

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String> trafficCodeTitle = [
    "Lorem Ipsum",
  ];
  List<String> degreeList = [
    "2nd Degree",
  ];
  List<String> lowtypeList = [
    " 2436 ",
  ];
  List<String> descriptionList = [
    "Municipal",
  ];
}