// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'retirement_tools_controller.dart';

class RetirementToolsScreen extends GetView<RetirementToolsController> {
  RetirementToolsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Retirement Tools",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "Retirement tools"),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                ),
                itemCount: controller.retiremnetToolsList.length,
                itemBuilder: (context, indux) {
                  return FederalCard(
                    text: controller.retiremnetToolsList[indux],
                  );
                })
          ],
        ),
      ),
    );
  }
}
