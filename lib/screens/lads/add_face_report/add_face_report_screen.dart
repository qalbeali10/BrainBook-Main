// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/radio_button.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_face_report_controller.dart';

class AddFaceReportScreen extends GetView<AddFaceReportController> {
  const AddFaceReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Add Report",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: controller.globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 15,),
                HeadingTextWidget(text: "Please add report details"),
                SizedBox(
                  height: 15,
                ),
                TextFormFieldWidget(title: "Full URN (xxx-xxxxx-xxxx-xxx)", controller: controller.fullURN),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Today’s Date", controller: controller.todayDate),
                SizedBox(
                  height: 10,
                ),
                Divider(color: Colors.black,),
                SizedBox(
                  height: 10,
                ),
                HeadingTextWidget(text: "Action"),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.actionList.length,
                    itemBuilder: (context, index) {
                      return Obx(
                            () => RadioWidget(
                          title: controller.actionList[index],
                          value: controller.actionList[index],
                          groupValue:
                          controller.actionSelectedOption.value,
                          onChanged: (value) {
                            controller.action.value = false;
                            controller.onChangedActionOption(value);
                          },
                        ),
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Number of Adult Arrests", controller: controller.noOfAdult),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Number of Subjects Detentions", controller: controller.noOfSubjects),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "URN Retention", controller: controller.urnRetention),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "URN Year", controller: controller.urnYear),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Sequential", controller: controller.sequential),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Reporting District", controller: controller.reportingDistrict),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Stat Code", controller: controller.statCode),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Tag", controller: controller.tag),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Call Time", controller: controller.callTime),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "C-Line 1", controller: controller.cLine1),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "C-Line 2", controller: controller.cLine2),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "C-Line 3", controller: controller.cLine3),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "C-Line 4", controller: controller.cLine4),
                SizedBox(
                  height: 10,
                ),
                HeadingTextWidget(text: "Additional Stat Code"),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Obx(
                            () => ListTile(
                          horizontalTitleGap: 3.0,
                          title: Text(
                            "ASAP/83",
                          ),
                          leading: Radio<bool>(
                            groupValue: controller.asapSelected!.value,
                            value: false,
                            onChanged: (value) {
                              controller.asapSelected!.value =
                              !controller.asapSelected!.value;
                            },
                            toggleable: true,
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "ASAP Stat Code 83", controller: controller.asapStatCode),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.additionalStatList.length,
                    itemBuilder: (context, index) {
                      return Obx(
                            () => RadioWidget(
                          title: controller.additionalStatList[index],
                          value: controller.additionalStatList[index],
                          groupValue:
                          controller.additionalStatSelectedOption.value,
                          onChanged: (value) {
                            controller.additionalStat.value = false;
                            controller.onChangedadditionalStatOption(value);
                          },
                        ),
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Other Stat Code Number", controller: controller.otherStatCode),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Date/Time/Day of Occurance", controller: controller.dateTimeOfOccurance),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.printsList.length,
                    itemBuilder: (context, index) {
                      return Obx(
                            () => RadioWidget(
                          title: controller.printsList[index],
                          value: controller.printsList[index],
                          groupValue:
                          controller.printSelectedOption.value,
                          onChanged: (value) {
                            controller.printsSelected.value = false;
                            controller.onChangedprintsSelectedOption(value);
                          },
                        ),
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Prints Requested By", controller: controller.printRequestedBy),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Print Request Time", controller: controller.printRequestTime),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Location of Occurance", controller: controller.locationOfOccourance),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(title: "Business Name", controller: controller.businessName),
                SizedBox(
                  height: 20,
                ),
                ButtonWidget(title: "SUBMIT", onTap: (){}),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
