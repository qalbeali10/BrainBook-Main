// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/screens/settings_location/settings_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsLocationScreen extends GetView<SettingsLocationController> {
  const SettingsLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Location",
          txtBtnTitle: "Save",
          onTap: () {},
        ),
        backgroundColor:  backgroundColor,
        body: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              HeadingTextWidget(text: "Choose location"),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text("Current location"),
              ),

              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text("Washington"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                title: "Search Location",
                controller: controller.searchLocation,
                icon: Icon(
                  Icons.location_on_outlined,
                  color: fontColorLight,
                ),
              ),
              SizedBox(height: 20,),
              ButtonWidget(title: "ADD LOCATION", onTap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
