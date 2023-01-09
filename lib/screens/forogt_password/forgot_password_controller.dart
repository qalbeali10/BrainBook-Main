// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:math';
import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/User_ResetPassword_model.dart';
import 'package:brainbook/APIS_DATA/APIs_Providers/Users_Providers/Users_ResetPassword_Provider.dart';
import 'package:brainbook/global_controller/email_password_validator.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForogtPasswordContoller extends GetxController {
  //.....Instance.....//
  final ResetUserPasswordProvider _resetUserPasswordProvider =
      ResetUserPasswordProvider();

//.....formKey and Variable Initializations.....//
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  void resetPassword() async {
    if (globalKey.currentState!.validate()) {
      var result = await _resetUserPasswordProvider.resetPassword(
        email: emailController.text,
      );
      if (result is String) {
        e.toString();
        Get.snackbar(
          "Error",
          result,
          snackPosition: SnackPosition.TOP,
        );
      } else {
        ResetPasswordModel _resetPasswordModel = result;
        Get.find<ValidatorController>().resetPassword = _resetPasswordModel;
        emailController.clear();
      }
      Get.toNamed(Routes.verificationCodeScreen);
    }
  }

// sendRequest() async{
//   if (globalKey.currentState!.validate()){
//
//
//     try{
//       final response = await  userProvider.passwordReset(email: emailController.text);
//
//       if(response[1]==true){
//
//         //Get.snackbar("scucess", response[0]);
//         Get.toNamed(Routes.verificationCodeScreen,arguments: emailController.text);
//       }
//       else{
//         Get.snackbar("Error", response[0]);
//       }
//
//     }
//         catch(e){
//       Get.snackbar("Error", e.toString());
//         }
//   }
// }

}
