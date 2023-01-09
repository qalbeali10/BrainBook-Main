// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_narrative_report_controller.dart';

class AddNarrtaiveReportScreen extends GetView<AddNarrativeReportController> {
  const AddNarrtaiveReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Add Report",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: controller.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20,),
                HeadingTextWidget(text: "Please add report details"),
                SizedBox(height: 15,),
                TextFormFieldWidget(title: "Name of Narrative", controller: controller.nameOfNarrative),
                SizedBox(height: 15,),
                TextFormFieldWidget(title: "Date / Time", controller: controller.dateTime),
                SizedBox(height: 15,),
                TextFormFieldWidget(title: "Report / File Number", controller: controller.reportFile),
                SizedBox(height: 15,),
                TextFormFieldWidget(title: "Report Narrative", controller: controller.reportNarrative,maxLine: 4,),
                SizedBox(height: 15,),
                ButtonWidget(title: "SUBMIT", onTap: (){}),
                SizedBox(height: 15,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
