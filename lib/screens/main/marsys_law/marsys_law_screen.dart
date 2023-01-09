
// ignore_for_file: file_names

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'marsys_law_controller.dart';


class MarsyLawScreen extends GetView<MarsyLawController> {
  MarsyLawScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
        title: "${Get.arguments}",
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  // contentPadding: EdgeInsets.only(left: 10.0),
                  title: HeadingTextWidget(
                      text: controller
                          .HeadingList[0]),
                  subtitle: Text(
                      controller.DetailList[0]),
                );
              }),
        ),
      ),
    );
  }
}
