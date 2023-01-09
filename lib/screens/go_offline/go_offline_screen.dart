// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/go_offline/go_offline_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/values/colors.dart';

class GoOfflineScreen extends GetView<GoOfflineController> {
  const GoOfflineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Go Offline",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: controller.goOfflineText),
            SizedBox(height: 20,),
            ButtonWidget(title: "GO OFFLINE",onTap: (){},),
          ],
        ),
      ),
    );
  }
}
