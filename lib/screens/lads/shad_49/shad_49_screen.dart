// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/lads/shad_49/shad_49_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SHAD49Screen extends GetView<SHAD49Controller> {
  const SHAD49Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "SHAD-49",
      ),
      backgroundColor:  backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListView.builder(
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
                itemCount: controller.shad49TextList.length,
                itemBuilder: (context, index) {
                  return Text(
                    controller.shad49TextList[index],
                    style: TextStyle(color: fontColorDark),
                  );
                }),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.shad49CardText.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.shad49CardText[index],
                  onTap: () => Get.toNamed(
                    controller.shad49Routes[index],
                  ),
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
