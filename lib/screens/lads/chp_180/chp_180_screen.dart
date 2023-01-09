// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/screens/lads/chp_180/chp_180_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CHPScreen extends GetView<CHPController> {
  const CHPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "CHP-180 Narratives",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Text( controller.cHPTextList[0],style: controller.textStyle,textAlign: controller.textAlign,),
            SizedBox(height: 10,),
            ButtonWidget(title: "View Narrative", onTap: (){}),
            SizedBox(height: 20,),
            Divider(color: Colors.black,),
            SizedBox(height: 15,),
            Text( controller.cHPTextList[0],style: controller.textStyle,textAlign: controller.textAlign,),
            SizedBox(height: 20,),
            ButtonWidget(title: "View Narrative", onTap: (){}),
            SizedBox(height: 20,),
            Divider(color: Colors.black,),
            SizedBox(height: 15,),
            Text( controller.cHPTextList[0],style: controller.textStyle,textAlign: controller.textAlign,),
            SizedBox(height: 10,),
            ButtonWidget(title: "View Narrative", onTap: (){}),
            SizedBox(height: 20,),
            Divider(color: Colors.black,),
          ],
        ),
      ),
    );
  }
}
