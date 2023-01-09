// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/radio_button.dart';
import 'package:brainbook/global_widgets/rich_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'vehicle_stop_form_controller.dart';

class VehicleStopFormScreen extends GetView<VehicleStopFormController> {
  VehicleStopFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
    title: "Vehicle Stop Form",
    txtBtnTitle: "Reset",
    onTap: () {},
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
    child: Form(
      key: controller.globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          HeadingTextWidget(
            text: "Please add form details",
          ),
          SizedBox(
            height: 15,
          ),
          TextFormFieldWidget(
            title: "Officer Name",
            controller: controller.officerName,
          ),
          SizedBox(
            height: 15,
          ),
          TextFormFieldWidget(
            title: "Location of Stop",
            controller: controller.locationOfStop,
          ),
          SizedBox(
            height: 15,
          ),
          TextFormFieldWidget(
            title: "Plate Info",
            controller: controller.plateInfo,
          ),
          SizedBox(
            height: 15,
          ),
          TextFormFieldWidget(
              title: "Date & Time", controller: controller.dateTime),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 1,
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "Violation resulting in stop:",
          ),
          SizedBox(
            height: 15,
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.violationList.length,
              itemBuilder: (context, index) {
                return Obx(() => RadioWidget(
                      title: controller.violationList[index],
                      value: controller.violationList[index],
                      groupValue: controller.violationSelectedOption.value,
                      onChanged: (value) {
                        controller.violation.value = false;
                        controller.onChangedViolationOption(value);
                      },
                    ));
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "Result of Stop:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.resultList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.resultList[index],
                    groupValue: controller.resultSelectedOption.value,
                    value: controller.resultList[index],
                    onChanged: (value) {
                      controller.result.value = false;
                      controller.onChangedResultOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "Driver’s Race / Minority Status:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.driverStatusList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.driverStatusList[index],
                    value: controller.driverStatusList[index],
                    groupValue: controller.driverStatusSelectedOption.value,
                    onChanged: (value) {
                      controller.driverStatus.value = false;
                      controller.onChangedDriverStatusOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "Driver’s Age:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.driverAgeList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.driverAgeList[index],
                    value: controller.driverAgeList[index],
                    groupValue: controller.driverAgeSelectedOption.value,
                    onChanged: (value) {
                      controller.driverAge.value = false;
                      controller.onChangedDriverAgeOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "Driver’s Gender:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.driverGenderList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.driverGenderList[index],
                    value: controller.driverGenderList[index],
                    groupValue: controller.driverGenderSelectedOption.value,
                    onChanged: (value) {
                      controller.driverGender.value = false;
                      controller.onChangedDriverGenderOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text:
                "Is driver a resident of Law Enforcement Agency’s Jurisdiction:",
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
                      "Yes",
                    ),
                    leading: Radio<bool>(
                      groupValue: controller.agencyJurisdiction!.value,
                      value: false,
                      onChanged: (value) {
                        controller.agencyJurisdiction!.value =
                            !controller.agencyJurisdiction!.value;
                      },
                      toggleable: true,
                    ),
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "Location of Stop:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.locationStopList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.locationStopList[index],
                    value: controller.locationStopList[index],
                    groupValue: controller.locationStopSelectedOption.value,
                    onChanged: (value) {
                      controller.locationStop.value = false;
                      controller.onChangedLocationStopOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          HeadingTextWidget(
            text: "Was a search initiated?:",
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
                      "Yes",
                    ),
                    leading: Radio<bool>(
                      groupValue: controller.searchinitiated!.value,
                      value: false,
                      onChanged: (value) {
                        controller.searchinitiated!.value =
                            !controller.searchinitiated!.value;
                      },
                      toggleable: true,
                    ),
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "Probable cause for search:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.probaleCauseList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.probaleCauseList[index],
                    value: controller.probaleCauseList[index],
                    groupValue: controller.probaleCauseSelectedOption.value,
                    onChanged: (value) {
                      controller.probaleCause.value = false;
                      controller.onChangedProbaleCauseOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "What was searched?:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.whatWasSearchList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.whatWasSearchList[index],
                    value: controller.whatWasSearchList[index],
                    groupValue:
                        controller.whatWasSearchSelectedOption.value,
                    onChanged: (value) {
                      controller.whatWasSearch.value = false;
                      controller.onChangedWhatWasSearchOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "Duration of search:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.durationOfSearchList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.durationOfSearchList[index],
                    value: controller.durationOfSearchList[index],
                    groupValue:
                        controller.durationOfSearchSelectedOption.value,
                    onChanged: (value) {
                      controller.durationOfSearch.value = false;
                      controller.onChangedDurationOfSearchOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          HeadingTextWidget(
            text: "Was Contraband discovered?:",
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
                      "Yes",
                    ),
                    leading: Radio<bool>(
                      groupValue: controller.contrabandDiscovered!.value,
                      value: false,
                      onChanged: (value) {
                        controller.contrabandDiscovered!.value =
                            !controller.contrabandDiscovered!.value;
                      },
                      toggleable: true,
                    ),
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "Type of Contraband discovered:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.typeOfContrabandList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.typeOfContrabandList[index],
                    value: controller.typeOfContrabandList[index],
                    groupValue:
                        controller.typeOfContrabandSelectedOption.value,
                    onChanged: (value) {
                      controller.typeOfContraband.value = false;
                      controller.onChangedTypeOfContrabandOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          HeadingTextWidget(
            text: "Was driver arrested?:",
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
                      "Yes",
                    ),
                    leading: Radio<bool>(
                      groupValue: controller.driverArrested!.value,
                      value: false,
                      onChanged: (value) {
                        controller.driverArrested!.value =
                            !controller.driverArrested!.value;
                      },
                      toggleable: true,
                    ),
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "If arrest was made, Crime / Violation alleged?:",
          ),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.arrestAllegedList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => RadioWidget(
                    title: controller.arrestAllegedList[index],
                    value: controller.arrestAllegedList[index],
                    groupValue:
                        controller.arrestAllegedSelectedOption.value,
                    onChanged: (value) {
                      controller.arrestAlleged.value = false;
                      controller.onChangedArrestAllegedOption(value);
                    },
                  ),
                );
              }),
          Divider(
            color: Colors.black,
          ),
          RichTextWidget(
            firstTitle:
                "Enter the email address you want the report sent to.You will receive an email from ",
            secondTitle: controller.emailAdaress,
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          TextFormFieldWidget(
            title: "Lorem ipsum",
            controller: null,
            icon: Icon(
              Icons.email_outlined,
              color: fontColorLight,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ButtonWidget(
            title: "Generate",
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
      ),
    );
  }

// RxBool select1 = true.obs;

// RxInt select= 0.obs;
}


