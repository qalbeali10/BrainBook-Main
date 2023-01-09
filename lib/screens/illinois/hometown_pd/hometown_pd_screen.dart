// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/illinois/hometown_pd/hometown_pd_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HometownPDScreen extends GetView<HometownPDController> {
  const HometownPDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Hometown PD",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15,),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.hometownList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.hometownList[index],
                  isLock: index==0,
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
