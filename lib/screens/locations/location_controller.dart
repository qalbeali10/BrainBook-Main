import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationController extends GetxController{

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String> addressList = [
    "43 C, Park street, CA",
  ];
  List<String> dateTimeList = [
    "12/01/2022  21214",
  ];

}