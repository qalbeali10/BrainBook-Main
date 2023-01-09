import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PATTrackerAddDetailController extends GetxController{

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController runningTime = TextEditingController();
  TextEditingController pushups = TextEditingController();
  TextEditingController otherActvity = TextEditingController();
  TextEditingController situps = TextEditingController();
  TextEditingController obstacleCourse = TextEditingController();
  TextEditingController dateTimeReq = TextEditingController();
  TextEditingController pullups = TextEditingController();

  clearController(){
    runningTime.clear();
    pushups.clear();
    otherActvity.clear();
    situps.clear();
    obstacleCourse.clear();
    dateTimeReq.clear();
    pullups.clear();
  }

}