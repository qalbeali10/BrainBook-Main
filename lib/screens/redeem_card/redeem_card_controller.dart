import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RedeemCardController extends GetxController{

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController cardNumController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumController = TextEditingController();
  TextEditingController recieveLocController = TextEditingController();
  TextEditingController paypalEmailController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController address2lController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();


  RxBool paypal = false.obs;
  var selectedOption = "Paypal".obs;
  onChangedOption(var option){
    selectedOption.value = option;
  }

}