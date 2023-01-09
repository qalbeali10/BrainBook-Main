// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rockford_pd_controller.dart';

class RockfordPDScreen extends GetView<RockfordPDController> {
  const RockfordPDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Rockford PD",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15,),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.rockfordPDList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.rockfordPDList[index],
                  isLock: index==0,
                  // onTap: () => Get.toNamed(
                  //   controller.napervilleList[index],
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
