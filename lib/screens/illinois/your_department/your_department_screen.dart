// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/illinois/your_department/your_department_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourDeptScreen extends GetView<YourDeptController> {
  const YourDeptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Your Department",
      ),
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(text: "List of Illinois departments"),
          SizedBox(
            height: 15,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.deptList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.deptList[index],
                onTap: () => Get.toNamed(
                  controller.deptRoutes[index],
                ),
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
    );
  }
}
