import 'package:get/get.dart';

class SupportController extends GetxController{

  RxBool yes = false.obs;
  var selectedOption = "Yes".obs;
  onChangedOption(var option){
    selectedOption.value = option;
  }

}