// ignore_for_file: unused_local_variable, prefer_const_declarations, must_be_immutable

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_controller/email_password_validator.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/rich_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'signup_controller.dart';

class SignUp extends GetView<SignUpController> {
  SignUp({Key? key}) : super(key: key);
  ValidatorController validatorController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 65,
              ),
              Image.asset(
                splashImage,
                height: 120,
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Sign up to get started",
                style: textStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 45,
              ),
              TextFormFieldWidget(
                title: "Email ",
                icon: Icon(Icons.email_outlined, color: fontColorDark),
                obscureText: false,
                validator: validatorController.emailValidator,
                controller: controller.emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => TextFormFieldWidget(
                  title: "Password ",
                  icon: const Icon(
                    Icons.lock_open_outlined,
                    color: fontColorDark,
                  ),
                  controller: controller.passwordController,
                  obscureText: controller.obscure,
                  inkWell: GestureDetector(
                    onTap: () {
                      controller.obscure = !controller.obscure;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(controller.obscure ? "Show" : "Hide",
                          style: TextStyle(color: fontColorLight)),
                    ),
                  ),
                  validator: validatorController.passwordValidator,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                title: "Country ",
                icon: Icon(Icons.location_city, color: fontColorDark),
                obscureText: false,
                controller: controller.countryController,
                validator: validatorController.countryValidator,
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 18.0),
              //   child: Form(
              //     child: DropdownButtonFormField(
              //       value: controller.dropdownvalue == ""
              //           ? null
              //           : controller.dropdownvalue,

              //       // isExpanded: true,
              //       validator: (value) {
              //         if (value == null) {
              //           return "null";
              //         }
              //         return null;
              //       },
              //       hint: Text("State"),
              //       onChanged: (value) {
              //         controller.dropdownvalue = value.toString();
              //       },
              //       items: controller.cities.map((String value) {
              //         return DropdownMenuItem<String>(
              //           value: value,
              //           child: Text(value),
              //         );
              //       }).toList(),
              //       // List.generate(controller.cities.length, (index) {
              //       //   return DropdownMenuItem(
              //       //     child: Text(controller.cities[index]),
              //       //     value: index.toString(),
              //       //   );
              //       // }),
              //       decoration: InputDecoration(
              //         fillColor: Colors.white,
              //         filled: true,
              //         enabled: false,
              //         enabledBorder: InputBorder.none,
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide.none,
              //           borderRadius: BorderRadius.circular(12),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 25,
              ),
              ButtonWidget(
                title: "CREATE ACCOUNT",
                onTap: () {
                  controller.createUser();
                },
              ),
              const SizedBox(
                height: 35,
              ),
              RichTextWidget(
                firstTitle: "Already Have an Account?  ",
                secondTitle: "Login",
                onTap: () => Get.back(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
