// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'subscribe_controller.dart';

class SubscribeScreen extends GetView<SubscribeController> {
  SubscribeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Subscription",
      ),
      backgroundColor:  backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "Please subscribe to gain full access to the app."),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text("Annual In-App subcription details:"),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: controller.subscribeList.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListViewText(
                    text: controller.subscribeList[index],
                  );
                }),
            SizedBox(height: 10,),
            Divider(color: Colors.black,),
            SizedBox(height: 10,),
            HeadingTextWidget(text: "Terms of use"),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(controller.term,style: onlyLightColor,),
            ),
            SizedBox(height: 10,),
            HeadingTextWidget(text: "Privacy policy"),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(controller.policy,style: onlyLightColor,),
            ),
            SizedBox(height: 20,),
            ButtonWidget(title: "SUBSCRIBE", onTap: (){}),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}
