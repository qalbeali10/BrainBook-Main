
// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'other_common_codes_controller.dart';

class OtherCommonCodesScreen extends GetView<OtherCommonCodesController> {
  const OtherCommonCodesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Other Common Codes",
      ),
      backgroundColor:  backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "List of OCC"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.otherCommonCodesList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.otherCommonCodesList[index],
                  isLock: index!=0 && index!=1,
                  onTap: () =>  index == 0 ?Get.toNamed(
                      Routes.oCCDetailScreen,arguments: controller.otherCommonCodesList[index]
                  ):null,
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
