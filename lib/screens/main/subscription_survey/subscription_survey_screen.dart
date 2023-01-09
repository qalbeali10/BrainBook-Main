// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/radio_button.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'subscription_survey_controller.dart';

class SubscriptionSurveyScreen extends GetView<SubscriptionSurveyController> {
  SubscriptionSurveyScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Subscription Survey",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: controller.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 10,
                ),
                HeadingTextWidget(text: "Will you re-subscribe next year?"),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.resubscribeList.length,
                    itemBuilder: (context, index) {
                      return Obx(() => RadioWidget(
                            title: controller
                                .resubscribeList[index],
                            value: controller
                                .resubscribeList[index],
                            groupValue: controller
                                .resubscribeSelectedOption.value,
                            onChanged: (value) {
                              controller.resubscribe.value =
                                  false;
                              controller
                                  .onChangedresubscribeOption(value);
                            },
                          ));
                    }),
                HeadingTextWidget(text: "Why?"),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  title: "Write Something",
                  controller: controller.writesomething1,
                  maxLine: 3,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                HeadingTextWidget(text: "Let us know. If we can do it, we will."),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  title: "Email",
                  controller: controller.email,
                  icon: Icon(Icons.email_outlined),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  title: "Write Something",
                  controller: controller.writesomething2,
                  maxLine: 3,
                ),
                SizedBox(
                  height: 10,
                ),
                ButtonWidget(title: "Submit", onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
