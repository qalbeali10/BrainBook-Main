// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'switch_state_change_controller.dart';

class SwitchStateChangeScreen extends GetView<SwitchStateChangeController> {
  SwitchStateChangeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Switch State",
        txtBtnTitle: "Reset",
        onTap: () {},
      ),
      backgroundColor:  backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30),
              HeadingTextWidget(
                text:
                    "After you change your state, you need to logout and log back in to see the new states info.",
              ),
              SizedBox(height: 30),
              TextFormFieldWidget(
                title: "State",
                controller: controller.state,
                icon: Icon(Icons.flag_outlined),
              ),
              SizedBox(height: 30),
              ButtonWidget(title: "SUBMIT", onTap: () {}),
              SizedBox(height: MediaQuery.of(context).size.height / 3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: ButtonWidget(title: "LOGOUT", onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
