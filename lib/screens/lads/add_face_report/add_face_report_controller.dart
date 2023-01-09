import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFaceReportController extends GetxController{

  RxBool? asapSelected = true.obs;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController fullURN = TextEditingController();
  TextEditingController todayDate = TextEditingController();
  TextEditingController noOfAdult = TextEditingController();
  TextEditingController noOfSubjects = TextEditingController();
  TextEditingController urnRetention = TextEditingController();
  TextEditingController urnYear = TextEditingController();
  TextEditingController sequential = TextEditingController();
  TextEditingController reportingDistrict = TextEditingController();
  TextEditingController statCode = TextEditingController();
  TextEditingController tag = TextEditingController();
  TextEditingController callTime = TextEditingController();
  TextEditingController cLine1 = TextEditingController();
  TextEditingController cLine2 = TextEditingController();
  TextEditingController cLine3 = TextEditingController();
  TextEditingController cLine4 = TextEditingController();
  TextEditingController asapStatCode = TextEditingController();
  TextEditingController otherStatCode = TextEditingController();
  TextEditingController dateTimeOfOccurance = TextEditingController();
  TextEditingController printRequestedBy = TextEditingController();
  TextEditingController printRequestTime = TextEditingController();
  TextEditingController locationOfOccourance = TextEditingController();
  TextEditingController businessName = TextEditingController();


  RxBool action = false.obs;
  var actionSelectedOption = "Active".obs;
  onChangedActionOption(var option){
    actionSelectedOption.value = option;
  }

  List<String> actionList = [
    "Active",
    "Inactive",
    "Pending",
    "Non-Criminal",
  ];

  RxBool additionalStat = false.obs;
  var additionalStatSelectedOption = "Gang Related/860".obs;
  onChangedadditionalStatOption(var option){
    additionalStatSelectedOption.value = option;
  }

  List<String> additionalStatList = [
    "Gang Related/860",
    "Cyber Related Crime/552",
    "Firearm Related/830",
    "Cyber Crime/551",
    "Cyber Related Incident (Non-Criminal)/559",
    "Other Stat Code",
  ];

  RxBool printsSelected = false.obs;
  var printSelectedOption = "Prints Requested".obs;
  onChangedprintsSelectedOption(var option){
    printSelectedOption.value = option;
  }

  List<String> printsList = [
    "Prints Requested",
    "Prints Completed",
  ];


}