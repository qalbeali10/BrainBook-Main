// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/support/support_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SupportScreen extends GetView<SupportController> {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Support",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(text: "Contact Support"),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Please answer the following."),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 18.0),
            child: Text("Have you visited the FAQ section first?"),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text("Yes"),
            leading: Obx(
              () => Radio(
                groupValue: controller.selectedOption.value,
                value: "Yes",
                onChanged: (value) {
                  controller.yes.value = false;
                  controller.onChangedOption(value);
                },
                toggleable: false,
              ),
            ),
          ),
          ListTile(
            title: Text("No"),
            leading: Obx(
              () => Radio(
                groupValue: controller.selectedOption.value,
                value: "No",
                onChanged: (value) {
                  controller.yes.value = false;
                  controller.onChangedOption(value);
                },
                toggleable: false,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonWidget(
            title: "CALL",
            onTap: () {},
            icon: Icon(Icons.phone),
          )
        ],
      ),
    );
  }
}
