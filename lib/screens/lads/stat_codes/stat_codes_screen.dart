// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'stat_codes_controller.dart';

class StatCodesScreen extends GetView<StatCodesController> {
  const StatCodesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Stat Codes",
      ),
      backgroundColor:  backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "List of Stat Codes"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.statCodesList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.statCodesList[index],
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
