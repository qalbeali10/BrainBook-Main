// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/values/colors.dart';
import 'add_response_controller.dart';

class AddResponseScreen extends GetView<AddResponseController> {
   AddResponseScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Add Response",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              HeadingTextWidget(text: "Add response"),
              SizedBox(height: 20,),
              TextFormFieldWidget(title: "Those bags aren’t a bad idea, but a normal duffel bag is good enough. Some agencie",
              maxLine: 3,
                controller: controller.addresponse,
              ),
              SizedBox(height: 20,),
              ButtonWidget(title: "POST", onTap: (){}),
              SizedBox(height: 20,),
              TextButton(onPressed: (){}, child: Text("Cancel")),
            ],
          ),
        ),
      ),
    );
  }
}
