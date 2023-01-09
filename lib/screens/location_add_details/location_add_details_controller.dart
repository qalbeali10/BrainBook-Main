import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocationAddDetailsController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController doorCode = TextEditingController();
  TextEditingController otherInfo = TextEditingController();
  TextEditingController businessName = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController date = TextEditingController();

  clearTextField(){
    doorCode.clear();
    otherInfo.clear();
    businessName.clear();
    address.clear();
    date.clear();
  }

}