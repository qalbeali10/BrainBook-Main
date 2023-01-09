// ignore_for_file: prefer_const_constructors, file_names
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rules_regulation_controller.dart';

class RulesRegulationScreen extends GetView<RulesRegulationController> {
  const RulesRegulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Rules & Regulation",
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15,
            ),
            HeadingTextWidget(text: "List of Rules & Regulation"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.rulesList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.rulesList[index],
                  onTap: () {},
                  // => Get.toNamed(
                  //   controller.newYorkDeptRoutes[index],
                  // ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
