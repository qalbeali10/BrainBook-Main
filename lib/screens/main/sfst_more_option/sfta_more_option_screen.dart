// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sfst_more_option_controller.dart';


class SFSTMoreOptionScreen extends GetView<SFSTMoreOptionController> {
  SFSTMoreOptionScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Get.arguments,
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            SizedBox(
              height: 20,
            ),

            HeadingTextWidget(text: "Revised 2015"),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                  "These manuals are approximately 5-8 MB each. A Wi-Fi connection is recommended.",),
            ),

            SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  childAspectRatio: 2,
                  //crossAxisSpacing: 3,
                  mainAxisSpacing: 20, crossAxisCount: 2,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return FederalCard(
                    text: controller.revised2015[index],
                  );
                }),
            const SizedBox(
              height: 20,
            ),
            Divider(height: 1,color: Colors.black,),
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "Revised 2018"),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                  "The revised 2018 manual is too large to put into this app. Please click on the link yo download."),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  childAspectRatio: 2,
                  //crossAxisSpacing: 3,
                  mainAxisSpacing: 20, crossAxisCount: 2,
                ),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return FederalCard(
                    text:"Download Link",
                  );
                }),
          ],
        ),
      ),
    );
  }
}
