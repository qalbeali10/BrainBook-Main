// ignore_for_file: prefer_function_declarations_over_variables, no_leading_underscores_for_local_identifiers
import 'dart:math';
import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/Users_Login_Model.dart';
import 'package:brainbook/APIS_DATA/APIs_Providers/Users_Providers/Users_Login_Provider.dart';
import 'package:brainbook/global_controller/email_password_validator.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  //.....Storage For JWT Token.....//
  final _getStorage = GetStorage();

  //.....Instance.....//
  final UsersLoginProvider _usersLoginProvider = UsersLoginProvider();

  //.....formKey and Variable Initializations.....//
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //.....Observable Variables.....//
  final _rememberMe = false.obs;
  get rememberMe => _rememberMe.value;
  set rememberMe(value) => _rememberMe.value = value;
  final _obscure = true.obs;
  get obscure => _obscure.value;
  set obscure(value) => _obscure.value = value;

  void loginUser() async {
    if (globalKey.currentState!.validate()) {
      var result = await _usersLoginProvider.userLogin(
        email: emailController.text,
        password: passwordController.text,
      );
      _getStorage.write('data', result.data);
      // print(result.data.toString());
      if (result is String) {
        e.toString();
        Get.snackbar(
          "Error",
          result,
          snackPosition: SnackPosition.TOP,
        );
      } else {
        UsersLoginModel _usersLoginModel = result;
        Get.find<ValidatorController>().userLogin = _usersLoginModel;
        emailController.clear();
        passwordController.clear();
      }
      Get.toNamed(Routes.dashBoardScreen);
    }
  }

  // onLoginTap() async {
  //   if (globalKey.currentState!.validate()) {
  //     try {
  //       final response = await userProvider.loginUser(
  //         email: emailController.text,
  //         password: passwordController.text,
  //       );

  //       if (response == true) {
  //         Get.snackbar("success", response);
  //         // Get.toNamed(Routes.dashBoardScreen);
  //       } else if (response == false) {
  //         Get.snackbar("Error", response);
  //         //Get.toNamed(Routes.loginScreen);
  //       }
  //     } catch (e) {
  //       Get.snackbar(
  //         "Error",
  //         e.toString(),
  //       );
  //     }
  //     emailController.clear();
  //     passwordController.clear();
  //   }
  // }
}

// if(statusCode. == 200) {
//   print("$response response");
//   print("$tokenOrMsg 22222222222");
// } else {
//   print("error: $tokenOrMsg");
// }
