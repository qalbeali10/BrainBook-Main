// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'broadcasts_controller.dart';

class BroadcastsScreen extends GetView<BroadcastsController> {
  const BroadcastsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Broadcasts",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "List of Broadcasts"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.broadcastsList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.broadcastsList[index],
                  isLock: index!=0 && index!=1,
                  onTap: () {},
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
