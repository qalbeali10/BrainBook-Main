// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/traffic_code/traffic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/traffic_code_card.dart';

class TrafficCodeScreen extends GetView<TrafficCodeController> {
  TrafficCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Traffic Codes",
      ),
      backgroundColor: backgroundColor,
      body: Form(
        key: controller.globalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(gradient: linearColor),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15),
                child: TextFormFieldWidget(
                  title: "Search",
                  controller: controller.search,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "List of Traffic Codes"),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return TrafficCodeCard(
                  title: controller.trafficCodeTitle[0],
                  degree: controller.descriptionList[0],
                  lowtype: controller.lowtypeList[0],
                  description: controller.descriptionList[0],
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            ButtonWidget(
                title: "ADD",
                onTap: () => Get.toNamed(Routes.trafficCodeAddDetailScreen)),
          ],
        ),
      ),
    );
  }
}
