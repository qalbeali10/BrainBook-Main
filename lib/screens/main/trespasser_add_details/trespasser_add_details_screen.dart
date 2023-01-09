// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'trespasser_add_details_controller.dart';

class AddTrespasserDetailsScreen
    extends GetView<AddTrespasserDetailsController> {
  AddTrespasserDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Trespasser APB",
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeadingTextWidget(text: "Please add Trespasser details"),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Trespass Authorizer",
                controller: controller.trespassAuth,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Location Name",
                controller: controller.locationName,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Address",
                controller: controller.address,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Date & Time",
                controller: controller.dateTime,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Police Department",
                controller: controller.policeDept,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Trespasser Name",
                controller: controller.trespassName,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Other Notes",
                controller: controller.otherNotes,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 130,
                child: Card(
                  //  color: Colors.red,
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "Add Photo",
                        style: TextStyle(fontSize: 15, color: fontColorLight),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: GestureDetector(
                        onTap: () {
                          print("Clicked");
                        },
                        child: Image.asset(
                          "assets/startpage/65.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white)),
                  margin: EdgeInsets.symmetric(horizontal: 19, vertical: 0.0),
                ),
              ),
              SizedBox(height: 15),
              ButtonWidget(
                title: "SAVE",
                onTap: () => Get.offNamed(Routes.trespasserAPBScreen),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
