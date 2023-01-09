// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:math';

import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/Users_%20SignUp_Model.dart';
import 'package:brainbook/APIS_DATA/APIs_Providers/Users_Providers/Users_SignUp_Provider.dart';
import 'package:brainbook/global_controller/email_password_validator.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  //.....Instance.....//
  final UsersSignUpProviders _usersSignUpProviders = UsersSignUpProviders();

//.....formKey and Variable Initializations.....//
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  //.....Observable Variables.....//
  final _obscure = true.obs;
  get obscure => _obscure.value;
  set obscure(value) => _obscure.value = value;
  final _dropdownvalue = "".obs;

  String get dropdownvalue => _dropdownvalue.value;
  set dropdownvalue(String value) => _dropdownvalue.value = value;

//.....Login Function for Calling A method from Login provider class......//
  void createUser() async {
    if (globalKey.currentState!.validate()) {
      var result = await _usersSignUpProviders.registerUser(
          email: emailController.text,
          password: passwordController.text,
          country: countryController.text);
      if (result is String) {
        e.toString();
        Get.snackbar(
          "Error",
          result,
          snackPosition: SnackPosition.TOP,
        );
      } else {
        UsersSignUpModel _signUpUserModel = result;
        Get.find<ValidatorController>().user = _signUpUserModel;
        emailController.clear();
        passwordController.clear();
        countryController.clear();
      }
      Get.toNamed(Routes.loginScreen);
    }
  }

//   onCreateTap() async {
//     if (globalKey.currentState!.validate()) {
//       if (dropdownvalue == "") {
//         return Get.snackbar("State Error", "Please Select the State");
//       }
//       try {
//         final response = await userProvider.registerUser(
//           email: emailController.text,
//           password: passwordController.text,
//           state: _dropdownvalue.value,
//         );

//         if (response is String) {
//           print(" $response ");
//           Get.snackbar("Response", response);
//         } else {
//           print(" $response");
//           UserModel userModel = response;

//           Get.snackbar("Response", userModel.msg);
//         }

//         if (response.toString() == "new user created") {
//           Get.toNamed(Routes.loginScreen);
//         }
//       } catch (e) {
//         Get.snackbar("Error", e.toString());
//       }

//       emailController.clear();
//       passwordController.clear();
//       dropdownglobalKey.currentState?.reset();
//     }
//   }
// }
//print(response.toString() == "new user created");

  // if (response is String) {
  //   print("String: $response");
  // } else {
  //   UserModel userModel = response;
  //   print(userModel.data.email);
  // }
  //   try {
  //     final response = await userProvider.registerUser(
  //       email: emailController.text,
  //       password: passwordController.text,
  //       state: _dropdownvalue.value,
  //     );
  //     print(response[1]);
  //     if (response is String) {
  //       print(" $response ");
  //       Get.snackbar("Response", response);
  //     } else {
  //       print(" $response");
  //       UserModel userModel = response;

  //       Get.snackbar("Response", userModel.msg);
  //     }
  //   } catch (e) {
  //     Get.snackbar("Error", e.toString());
  //   }
  // if (globalKey.currentState!.validate()) {
  //   if (dropdownvalue == "") {
  //     // print("error");
  //     return Get.snackbar("State Error", "Please Select the State");
  //   }

  // Get.toNamed(Routes.loginScreen);
  // print(dropdownvalue);
}






 // List<String> cities = [
  //   "Home",
  //   "Illinois",
  //   "New York",
  //   "LASD",
  // ];