import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNarrativeReportController extends  GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController nameOfNarrative = TextEditingController();
  TextEditingController dateTime = TextEditingController();
  TextEditingController reportFile = TextEditingController();
  TextEditingController reportNarrative = TextEditingController();

}