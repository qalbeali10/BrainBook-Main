// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/illinois/weapons_detail/weapons_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeaponDetailScreen extends GetView<WeaponDetailController> {
  const WeaponDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Get.arguments,image: true,
      ),
      backgroundColor:backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: Get.arguments),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: HeadingTextWidget(
                 text: "Code",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: HeadingTextWidget(
                text:controller.weaponDetailSubtitle[0],
                color: true,textColor: fontColorDark,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: HeadingTextWidget(text: "Penal Code"),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: HeadingTextWidget(
                text: controller.weaponDetailSubtitle[1],
                color: true,textColor: fontColorDark,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 1,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
