// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common_vtl_controller.dart';

class CommonVTLScreen extends GetView<CommonVTLController> {
  const CommonVTLScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Common VTL",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20,),
          HeadingTextWidget(text: "List of Common VTL"),
          SizedBox(
            height: 15,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.commonList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.commonList[index],
                isLock: index!=0,
                onTap: () =>  index == 0 ?Get.toNamed(
                    Routes.newYorkAlcoholScreen
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
