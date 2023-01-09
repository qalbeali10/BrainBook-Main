// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/main/flash_cards/flash_cards_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlashCardsScreen extends GetView<FlashCardController> {
  FlashCardsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title:Get.arguments,
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "Recruit Section"),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.flashCardList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.flashCardList[index],
                  onTap: () => Get.toNamed(
                    controller.flashCardRoutes[index],
                    arguments: controller.flashCardList[index],
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 60,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
