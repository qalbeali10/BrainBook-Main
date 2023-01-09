import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'testifying_tips_controller.dart';

class TestifyingTipsScreen extends GetView<TestifyingTipsController> {
  TestifyingTipsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Testifying Tips",),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 20,),
            HeadingTextWidget(text: "These are general procedures"),
            const Padding(
              padding: EdgeInsets.only(left: 14.0),
              child: Text(
                "Refer to your department policy regarding dead persons ",
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: controller.testifyingTipsLsit.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,index){
                  return ListViewText( text: controller.testifyingTipsLsit[index],);

                }),
          ],
        ),
      ),
    );
  }
}