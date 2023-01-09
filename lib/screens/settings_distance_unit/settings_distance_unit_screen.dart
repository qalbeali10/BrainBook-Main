// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/settings_distance_unit/settings_distance_unit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsDistanceUnitScreen
    extends GetView<SettingsDistanceUnitController> {
  const SettingsDistanceUnitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Distance units",
        ),
        backgroundColor:  backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "Select distance units"),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Miles/Yards",
                  ),
                  Obx(
                    () => Radio(
                      groupValue: controller.selectedOption.value,
                      value: controller.valueList[0],
                      onChanged: (value) {
                        controller.distanceUnits.value = false;
                        controller.onChangedOption(value);
                      },
                      toggleable: false,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kilometers/Meters",
                  ),
                  Obx(
                    () => Radio(
                      groupValue: controller.selectedOption.value,
                      value: controller.valueList[1],
                      onChanged: (value) {
                        controller.distanceUnits.value = false;
                        controller.onChangedOption(value);
                      },
                      toggleable: false,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            ButtonWidget(
              title: "DONE",
              onTap: ()=> Get.offNamed(Routes.settingsScreen,arguments: controller.selectedOption),
            ),
          ],
        ),
      ),
    );
  }
}
