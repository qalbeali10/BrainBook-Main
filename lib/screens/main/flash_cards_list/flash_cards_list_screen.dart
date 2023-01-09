// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/delete_card.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'flash_cards_list_controller.dart';

class FlashCardsListScreen extends GetView<FlashCardListController> {
  FlashCardsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Flashcard 1",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "List of Flash Cards"),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: controller.flashCardList.length,
              itemBuilder: (context, index) {
                return DeleteCard(
                  text: controller.flashCardList[index],
                  onTapDelete: () {},
                  onTapCard: () {},
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            ButtonWidget(
                title: "ADD",
                onTap: () => Get.toNamed(Routes.flashCardAddDetailsScreen)),
          ],
        ),
      ),
    );
  }
}
