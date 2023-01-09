// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_controller/email_password_validator.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'forgot_password_controller.dart';

class ForgotPassword extends GetView<ForogtPasswordContoller> {
  ForgotPassword({Key? key}) : super(key: key);
  ValidatorController validatorController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: controller.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      "Forgot Password",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  forgotImage,
                  height: 190,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Forgot Password?",
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Enter your email address for the verification process.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormFieldWidget(
                  controller: controller.emailController,
                  icon: Icon(
                    Icons.email_outlined,
                    color: fontColorLight,
                  ),
                  title: "Email",
                  obscureText: false,
                  validator: validatorController.emailValidator,
                ),
                SizedBox(
                  height: 35,
                ),
                ButtonWidget(
                    title: "SEND REQUEST",
                    onTap: () {
                      controller.resetPassword();
                    }
                    //  controller.sendRequest,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
