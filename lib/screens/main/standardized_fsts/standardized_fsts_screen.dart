import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'standardized_fsts_controller.dart';

class StandardizedFST extends GetView<StandardizedFSTController> {
  StandardizedFST({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
        title: "Standardized FST`s",
      ),
      body: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  // contentPadding: EdgeInsets.only(left: 10.0),
                  title: HeadingTextWidget(
                      text: controller
                          .standardizedFSTHeadingList[index]),
                  subtitle: Text(
                      controller.standardizedFSTDetailList[0]),
                );
              }),
          const Divider(
            height: 1,
            color: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 200.0),
            child: HeadingTextWidget(
              text: "More Options",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                childAspectRatio: 2,
                //crossAxisSpacing: 3,
                mainAxisSpacing: 20, crossAxisCount: 2,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                return FederalCard(
                  text: controller.moreOptionList[index],
                  onTap: () =>
                      index == 1
                          ? Get.toNamed(Routes.nHTSAManualScreen,
                              arguments:
                              controller.moreOptionList[1])
                          : null,
                );
              })
        ],
      ),
    );
  }
}
