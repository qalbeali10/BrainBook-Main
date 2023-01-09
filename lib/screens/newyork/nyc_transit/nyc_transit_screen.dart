// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'nyc_transit_controller.dart';

class NYCTransitScreen extends GetView<NYCTransitController> {
  const NYCTransitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "NYC Transit",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.nycList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.nycList[index],
                isLock: index==1,
                onTap: () =>  index == 0 ?Get.toNamed(
                  Routes.rulesRegulationScreen
                ):null,
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
