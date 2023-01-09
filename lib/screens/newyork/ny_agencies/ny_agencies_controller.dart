

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NYAgenciesController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String>  nyAgencyList = [
    "Alcoholism - Substance Abuse",
    "Abandoned Infant Hotline",
    "Adult Home Complaint Hotline",
    "Agriculture",
    "AIDS Counseling",
    "AIDS Discrimination",
    "ASK DHCR",
  ];
}