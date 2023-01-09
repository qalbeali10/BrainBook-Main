// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'trespasser_apb_controller.dart';
import 'widget/trespasser_card.dart';

class TrespasserAPBScreen extends GetView<TrespasserAPBController> {
  TrespasserAPBScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
        title: "Trespasser APB",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 15,
          ),
          HeadingTextWidget(
            text: "List of Trespassers",
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (contex, index) {
                return TrespasserCard(
                  onTap: () => Get.toNamed(Routes.trespasserApbDetailsScreen,
                      arguments: controller.imageList[0]),
                  image: controller.imageList[index],
                  title: controller.aboutList[1],
                  subtitle: controller.aboutList[2],
                  heading: controller.aboutList[0],
                );
              }),
          SizedBox(
            height: 25,
          ),
          ButtonWidget(
              title: "ADD",
              onTap: () => Get.offNamed(Routes.addTrespasserDetailsScreen))
        ],
      ),
    );
  }
}
