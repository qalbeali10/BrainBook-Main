import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FlashCardAddDetailsController extends GetxController{

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController codeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  clearController(){
    codeController.clear();
    descriptionController.clear();
  }

}