// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'traffic_code_add_details_controller.dart';

class TrafficCodeAddDetailScreen
    extends GetView<TrafficCodeAddDetailsController> {
  TrafficCodeAddDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Add Traffic Code",
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(text: "Traffic Code Details"),
              SizedBox(
                height: 12,
              ),
              TextFormFieldWidget(title: "Code", controller: controller.Code),
              SizedBox(
                height: 12,
              ),
              TextFormFieldWidget(
                  title: "Degree", controller: controller.degree),
              SizedBox(
                height: 12,
              ),
              TextFormFieldWidget(
                  title: "Law Type", controller: controller.lowType),
              SizedBox(
                height: 12,
              ),
              TextFormFieldWidget(
                  title: "Description", controller: controller.description),
              SizedBox(
                height: 12,
              ),
              TextFormFieldWidget(
                  title: "Other Information 1",
                  controller: controller.otherInfo1),
              SizedBox(
                height: 12,
              ),
              TextFormFieldWidget(
                  title: "Other Information 2",
                  controller: controller.otherInfo2),
              SizedBox(
                height: 20,
              ),
              ButtonWidget(title: "SAVE", onTap: () {}),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
