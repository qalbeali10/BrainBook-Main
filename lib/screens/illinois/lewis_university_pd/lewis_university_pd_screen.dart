// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lewis_university_pd_controller.dart';

class LewisUniversityPDScreen extends GetView<LewisUniversityPDController> {
  const LewisUniversityPDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Lewis University PD",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.lewisList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.lewisList[0],
                  isLock: true,
                  // onTap: () => Get.toNamed(
                  //   controller.deptRoutes[index],
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
