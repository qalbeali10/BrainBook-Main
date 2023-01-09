import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ISPDistrictsController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String> ispList = [
    "District 1",
    "District 2",
    "District 3",
    "District 4",
    "District 5",
    "District 6",
    "District 7",
    "District 8",

  ];
}