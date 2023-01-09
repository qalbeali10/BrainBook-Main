// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'important_information_controller.dart';

class ImportantInfoScreen extends GetView<ImportantInfoController> {
   ImportantInfoScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Important Information",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "Important information you must know about this app"),
            SizedBox(height: 15,),
            ListView.builder(
                shrinkWrap: true,
                itemCount: controller.infoList.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListViewText(
                    /// warratnsController: warratnsController,
                    text: controller.infoList[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
