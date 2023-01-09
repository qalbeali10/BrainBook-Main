// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, sort_child_properties_last
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'location_add_details_controller.dart';

class LocationAddDetailsScreen extends GetView<LocationAddDetailsController> {
  LocationAddDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Add Locations",
        txtBtnTitle: "Clear",
        onTap: () {
          controller.clearTextField();
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
                SizedBox(
                  height: 15,
                ),
                HeadingTextWidget(text: "Add new lolction details"),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Gate door code",
                  controller: controller.doorCode,
                  icon: Icon(
                    Icons.door_back_door_outlined,
                    color: fontColorLight,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Other information",
                  controller: controller.otherInfo,
                  icon: Icon(
                    Icons.info,
                    color: fontColorLight,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Business name",
                  controller: controller.businessName,
                  icon: Icon(
                    Icons.business,
                    color: fontColorLight,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Address",
                  controller: controller.address,
                  icon: Icon(
                    Icons.location_on,
                    color: fontColorLight,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(
                  title: "Date",
                  controller: controller.date,
                  icon: Icon(
                    Icons.date_range,
                    color: fontColorLight,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                HeadingTextWidget(text: "Add Photos"),
                Container(
                  height: 130,
                  child: Card(
                      child: GestureDetector(
                        onTap: () {
                          print("Clicked");
                        },
                        child: Image.asset(
                          "assets/startpage/65.png",
                          scale: 2.5,
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 25.0),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white))),
                ),
                ButtonWidget(title: "ADD LOCATION", onTap: () {}),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
