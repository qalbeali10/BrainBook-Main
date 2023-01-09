// ignore_for_file: prefer_const_constructors



import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pta_tracker_add_details_controller.dart';

class PATTrackerAddDetailsScreen extends GetView<PATTrackerAddDetailController> {
   PATTrackerAddDetailsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "PAT Tracker",
        txtBtnTitle: "Clear",
        onTap: () {
          controller.clearController();
        },
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
           key: controller.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HeadingTextWidget(text: "PAT tracker details"),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Running Time", controller: controller.runningTime),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Pushups", controller: controller.pushups),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Other Activity time", controller: controller.otherActvity),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Situps", controller: controller.situps),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Obstacle course time", controller: controller.obstacleCourse),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Date time required", controller: controller.dateTimeReq),
                SizedBox(height: 10,),
                TextFormFieldWidget(title: "Pullups", controller: controller.pullups),
                SizedBox(height: 10,),
                ButtonWidget(title: "SAVE", onTap: (){}),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
