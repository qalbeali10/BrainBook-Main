import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'trafic_investigation_controller.dart';

class TraficInvestigationScreen extends GetView<TraficInvestigationController> {
  TraficInvestigationScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
    title: "Traffic Investigation",
      ),
      body: Container(
    margin: EdgeInsets.only(top: 20),
    child: GridView.builder(
        itemCount: controller.investigationList.length,
        itemBuilder: (context, index) {
          return FederalCard(
            onTap: (){},
            text: controller.investigationList[index],
            isLock: false,
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
    );
  }
}
