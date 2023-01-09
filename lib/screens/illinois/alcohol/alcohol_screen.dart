// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/illinois/alcohol/alcohol_controller.dart';
import 'package:brainbook/screens/main/gang_slang/widgets/gang_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlcoholScreen extends GetView<AlcoholController> {
  const AlcoholScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Alcohol",
      ),
      backgroundColor: backgroundColor,
      body: Form(
        key: controller.globalKey,
        child: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(gradient: linearColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0, vertical: 15),
                child: TextFormFieldWidget(
                  title: "Search",
                  controller: controller.search,
                  icon: Icon(Icons.search),
                ),

              ),
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 20),
              shrinkWrap: true,
              itemCount: controller.alcoholList.length,
              itemBuilder: (context, index) {
                return GangSlangListWidget(
                  onTap: ()
                  =>Get.toNamed(Routes.alcoholDetailScreen,arguments: controller.alcoholList[index]),
                  text: controller.alcoholList[index],
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}
