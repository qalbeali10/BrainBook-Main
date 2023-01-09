import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'age_result_controller.dart';

class AgeResultScreen extends GetView<AgeResultController> {
  AgeResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Age Calculator",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140.0),
              child: HeadingTextWidget(
                text: "Here are the results",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.ageresult.length,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      const SizedBox(
                        height: 20,
                      ),
                      HeadingTextWidget(
                        text: controller.ageresult[index],
                        color: index == 1 || index == 3,
                        textColor: fontColorDark,
                      )
                    ]);
                  }),
            ),
            // HeadingTextWidget(text: "Date of birth before today"),
            // SizedBox(height: 30,),
            // HeadingTextWidget(text: "31"),
            // SizedBox(height: 30,),
            // HeadingTextWidget(text: "Date of birth before today"),
            // SizedBox(height: 30,),
            // HeadingTextWidget(text: "31"),
            // SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
