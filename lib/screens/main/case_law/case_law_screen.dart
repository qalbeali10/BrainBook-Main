import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'case_law_controller.dart';

class CaseLawScreen extends GetView<CaseLawController> {
  CaseLawScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Case Law",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: GridView.builder(
            itemCount: controller.caseLawList.length,
            itemBuilder: (context, index) {
              return FederalCard(
                text: controller.caseLawList[index],
                isLock: index != 0,
                onTap: ()=> index == 0 ? Get.toNamed(Routes.lawCaseDetailScreen,arguments:controller.caseLawList[index] ) : null,
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 60,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
            ),
          ),
        ),
      ),
    );
  }
}
