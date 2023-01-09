// ignore_for_file: prefer_const_constructor
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'nyc_summons_controller.dart';

class NYCSummonsScreen extends GetView<NYCSummonsController> {
  const NYCSummonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "NYC Summons",
      ),
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(text: "List of NYC Summons"),
          SizedBox(
            height: 15,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.nycList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.nycList[index],
                isLock: index == 0 || index == 1 || index == 2 || index == 5,
                onTap: () => index == 3 || index == 4 || index == 6
                    ? Get.toNamed(
                        controller.nycSummonsRoutes[index],
                      )
                    : null,
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
