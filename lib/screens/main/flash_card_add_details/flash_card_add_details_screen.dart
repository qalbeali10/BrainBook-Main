// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'flash_card_add_details_controller.dart';

class FlashCardAddDetailsScreen extends GetView<FlashCardAddDetailsController> {
   FlashCardAddDetailsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
    title: "Flashcards",
    txtBtnTitle: "Clear",
    onTap: () {
      controller.clearController();
    },
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              HeadingTextWidget(text: "Add details"),
              SizedBox(height: 20,),
              TextFormFieldWidget(title: "code", controller: controller.codeController),
              SizedBox(height: 20,),
              TextFormFieldWidget(title: "Description", controller: controller.descriptionController,maxLine: 5,),
              SizedBox(height: 20,),
              ButtonWidget(title: "SAVE", onTap: ()=>Get.back())
            ],
          ),
        ),
      ),
    );
  }
}
