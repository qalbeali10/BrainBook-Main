import 'dart:math';
import 'package:brainbook/APIS_DATA/APIs_Providers/Users_Providers/User_Verification_Provider.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationCodeController extends GetxController {
  //.....Instance.....//
  final VerificationProvider _verificationProvider = VerificationProvider();

//.....formKey and Variable Initializations.....//
  TextEditingController verificationCodeController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

//  Password Verification  Method //
  void verifyCode() async {
    if (globalKey.currentState!.validate()) {
      var result = await _verificationProvider.verifyPassword(
          data: verificationCodeController.text);
      if (result is String) {
        e.toString();
        Get.snackbar(
          "Error",
          result,
          snackPosition: SnackPosition.TOP,
        );
      } else {
        // VerificationModel _verificationModel = result;
        // Get.find<ValidatorController>().verifyPassword = _verificationModel;
        verificationCodeController.clear();
      }
      Get.toNamed(Routes.newPasswordScreen);
    }
  }

//   verifyCode() async{
// if(globalKey.currentState!.validate()){
//
//   //
//
//   try{
//     final response = await userProvider.verifyCode(code: verificationCodeController.text);
//
//     print(response);
//     print("${response[0]} UserId");
//     print("${response[2]} Code");
//     if(response[1]==true){
//       Get.snackbar("Success", "Code verify");
//       Get.toNamed(Routes.newPasswordScreen,arguments: [response[0],response[2]]);
//       verificationCodeController.clear();
//     }
//     else{
//       Get.snackbar("Error", response);
//     }
//   }
//   catch(e){
//     Get.snackbar("Error",e.toString());
//   }
// }
//
//   }

}
