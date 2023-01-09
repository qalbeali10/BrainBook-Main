// ignore_for_file: prefer_const_constructors


import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/privacy_policy/privacy_policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicyScreen extends GetView<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Privacy Policy",
      ),
      backgroundColor:  backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "Privacy Policy"),
            SizedBox(height: 15,),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context,index){
              return ListTile(
                title: Text(controller.privacyTitle),
                subtitle: Text(controller.privateList[0]),
              );
            })

          ],
        ),
      ),
    );
  }
}
