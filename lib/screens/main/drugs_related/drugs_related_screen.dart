import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drugs_related_controller.dart';

class DrugsRelated extends GetView<DrugsRelatedController> {
  DrugsRelated({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
    title: "Drugs Related",
      ),
      body: SafeArea(
        child: Container(
    margin: EdgeInsets.only(top: 20),
    child: GridView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return FederalCard(
              text: controller.draugsList[index],
              isLock: index == 0 || index == 1 || index == 5,
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // maxCrossAxisExtent: 150,
            mainAxisExtent: 60,
            childAspectRatio: 2,
            //crossAxisSpacing: 3,
            mainAxisSpacing: 20, crossAxisCount: 2,
          )),
        ),
      ),
    );
  }
}
