import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'nypd_controller.dart';

class NYPDScreen extends GetView<NYPDController> {
  const NYPDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "NYPD",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.nypdList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.nypdList[index],
                isLock: index==4,
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
