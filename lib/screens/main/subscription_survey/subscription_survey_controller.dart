import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SubscriptionSurveyController extends GetxController{

  RxBool resubscribe = false.obs;
  var resubscribeSelectedOption = "Yes".obs;
  onChangedresubscribeOption(var option){
    resubscribeSelectedOption.value = option;
  }

  List<String> resubscribeList = [
    "Yes",
    "No",
  ];


  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController writesomething1 = TextEditingController();
  TextEditingController writesomething2 = TextEditingController();
  TextEditingController email = TextEditingController();


}