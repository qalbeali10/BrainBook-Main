// ignore_for_file: prefer_const_constructors
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'oath_ecb_summons_controller.dart';

class OATHECBSummonsScreen extends GetView<OATHECBSummonsController> {
  const OATHECBSummonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "OATH ECB Summons",
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15,
            ),
            HeadingTextWidget(text: "List of OATH ECB Summons"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.othecbList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.othecbList[index],
                  isLock: index != 0 && index != 1,
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
