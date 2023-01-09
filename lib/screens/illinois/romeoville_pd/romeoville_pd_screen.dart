

// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'romeoville_pd_controller.dart';


class RomeopvillePDScreen extends GetView<RomeopvillePDController> {
  const RomeopvillePDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Romepville PD",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.romepvillePDList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.romepvillePDList[0],
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
