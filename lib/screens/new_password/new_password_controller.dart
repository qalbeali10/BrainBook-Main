// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:math';
import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/user_NewPassword_Model.dart';
import 'package:brainbook/APIS_DATA/APIs_Providers/Users_Providers/User_NewPassword_Provider.dart';
import 'package:brainbook/global_controller/email_password_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class NewPasswordContoller extends GetxController {
  //.....Instance.....//
  final NewPasswordProvider _newPasswordProvider = NewPasswordProvider();

  //.....formKey and Variable Initializations.....//
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  // new password method //

  void enterNewPassword() async {
    if (globalKey.currentState!.validate()) {
      var result = await _newPasswordProvider.newPassword(
          password: newPasswordController.text,
          confirmPassword: confirmPasswordController.text);
      //  _getStorage.write('data', result.data);
      // print(result.data.toString());
      if (result is String) {
        e.toString();
        Get.snackbar(
          "Error",
          result,
          snackPosition: SnackPosition.TOP,
        );
      } else {
        NewPasswordModel _newPasswordModel = result;
        Get.find<ValidatorController>().newPassword = _newPasswordModel;
        newPasswordController.clear();
        confirmPasswordController.clear();
      }
      Get.toNamed(Routes.passwordUpdateScreen);
    }
  }

  final _obscureNew = true.obs;
  get obscureNew => _obscureNew.value;
  set obscureNew(value) => _obscureNew.value = value;

  final _obscureConfrim = true.obs;
  get obscureConfrim => _obscureConfrim.value;
  set obscureConfrim(value) => _obscureConfrim.value = value;

  // confrimPassword() async{
  //
  //
  //   if(globalKey.currentState!.validate())
  //   {
  //   try{
  //     final response =  await userProvider.newPassword(
  //         userId: Get.arguments[0],
  //         code: Get.arguments[1],
  //         password: newPasswordController.text,
  //         confirmPassword: confirmPasswordController.text);
  //     print("$response respoinsess");
  //     if(response[1]==true){
  //       Get.snackbar("Success", response[0]);
  //       Get.toNamed(Routes.passwordUpdateScreen);
  //     }
  //     else{
  //       Get.snackbar("Error", response[0]);
  //     }
  //
  //   }
  //       catch(e){
  //     Get.snackbar("Error", e.toString());
  //       }
  //
  //   }
  //
  //
  // }
}
