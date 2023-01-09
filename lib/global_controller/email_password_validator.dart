// ignore_for_file: prefer_function_declarations_over_variables

import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/User_ResetPassword_model.dart';
import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/Users_%20SignUp_Model.dart';
import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/Users_Login_Model.dart';
import 'package:get/get.dart';

class ValidatorController extends GetxController {
  // String? Function(String?)? emailValidator = (String? email) {
  //   if (email!.isEmpty) {
  //     return 'email empty';
  //   } else if (email.length < 3) {
  //     return 'email short';
  //   } else if (email.length > 30) {
  //     return 'email long';
  //   } else if (!email.contains("@gmail.com")) {
  //     return 'please fill the email field correctly';
  //   }
  //   return null;
  // };
  String? Function(String?)? emailValidator = (String? email) {
    if (email!.isEmpty) {
      return 'email empty';
    } else if (email.length < 3) {
      return 'email short';
    } else if (!email.contains('@')) {
      return 'Enter a Valid Email Contain @';
    } else if (!email.endsWith('.com')) {
      return 'Enter a Valid Email Contain xyz.com';
    } else {
      return null;
    }
    // String? Function(String?)? passwordValidator = (String? password) {
    //   if (password!.isEmpty) {
    //     return 'Password empty';
    //   } else if (password.length < 3) {
    //     return 'Password short';
    //   } else if (password.length > 25) {
    //     return 'Password long';
    //   }else if (!password.contains('')) {
    //     return 'Password long';
    //   }

    //   return null;
  };
  String? Function(String?)? passwordValidator = (String? password) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    if (password!.isEmpty) {
      return 'Password empty';
    } else {
      if (!regex.hasMatch(password)) {
        return 'Enter valid password Contain {Aa123}';
      } else {
        return null;
      }
    }
  };

  String? Function(String?)? countryValidator = (String? country) {
    if (country!.isEmpty) {
      return 'country empty';
    } else {
      return null;
    }
  };
  String? Function(String?)? verifyCodeValidator = (String? verifyCode) {
    if (verifyCode!.isEmpty) {
      return 'verifyCode empty';
    }
    return null;
  };

  String? Function(String?)? newPasswordValidator = (String? newpassword) {
    if (newpassword!.isEmpty) {
      return 'Password empty';
    } else if (newpassword.length < 3) {
      return 'Password short';
    } else if (newpassword.length > 25) {
      return 'Password long';
    }

    return null;
  };
  String? Function(String?)? confrinNewPasswordValidator =
      (String? cpnfrimnewpassword) {
    if (cpnfrimnewpassword!.isEmpty) {
      return 'Password empty';
    } else if (cpnfrimnewpassword.length < 3) {
      return 'Password short';
    } else if (cpnfrimnewpassword.length > 25) {
      return 'Password long';
    }

    return null;
  };

//......... Realted to SigUp Screen......//
  final Rx<UsersSignUpModel> _user = UsersSignUpModel(msg: '').obs;
  UsersSignUpModel get user => _user.value;
  set user(UsersSignUpModel user) => _user.value = user;

  //......... Realted to Login Screen......//
  final Rx<UsersLoginModel> _userLogin = UsersLoginModel(msg: '').obs;
  UsersLoginModel get userLogin => _userLogin.value;
  set userLogin(UsersLoginModel userLogin) => _userLogin.value = userLogin;

//......... Realted to ForgotPassword Screen......//
  final Rx<ResetPasswordModel> _resetPassword = ResetPasswordModel(msg: '').obs;
  ResetPasswordModel get resetPassword => _resetPassword.value;
  set resetPassword(ResetPasswordModel resetPassword) =>
      _resetPassword.value = resetPassword;
}
