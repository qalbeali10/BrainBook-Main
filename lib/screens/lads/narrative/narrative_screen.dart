// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'narrative_controller.dart';

class NarrativeScreen extends GetView<NarrativeController> {
  const NarrativeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "49 Narrative",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              controller.narrativeText,
              style: TextStyle(color: fontColorDark),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              width: 330,
              child: Card(
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text("My Report",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWidget(title: "ADD REPORT", onTap: () =>Get.toNamed(Routes.addNarrtaiveReportScreen)),
          ],
        ),
      ),
    );
  }
}
