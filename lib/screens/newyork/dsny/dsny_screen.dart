// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/newyork/dsny/dsny_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DSNYScreen extends GetView<DSNYController> {
  const DSNYScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "",
      ),
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 25,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.dsnyList1.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.dsnyList1[index],
                isLock: index==1,
                onTap: ()
                => Get.toNamed(
                 Routes.dSNYListScreen,arguments: controller.dsnyList1[index]
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 60,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
            ),
          ),
          SizedBox(height: 25,),
          HeadingTextWidget(text: "Residential Recycling Codes"),
          SizedBox(height: 25,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.dsnyList2.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.dsnyList2[index],
                isLock: true,
                onTap: () {},
                // => Get.toNamed(
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
    );
  }
}
