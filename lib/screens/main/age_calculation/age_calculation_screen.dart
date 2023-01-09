import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'age_calculation_controller.dart';

class AgeCalculationScreen extends GetView<AgeCalcutaionController> {
   AgeCalculationScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
        title: "Age Calculator",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Form(
            key: controller.ageGlobalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20,),
                const HeadingTextWidget(text:  "Please enter the year which you were born",),
                const SizedBox(height: 30,),
                TextFormFieldWidget(title: "Enter year",obscureText: true,controller: controller.ageController,),
                const SizedBox(height: 20,),
                ButtonWidget(title: "Calculate",onTap: ()=>Get.toNamed(Routes.ageResultScreen),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}