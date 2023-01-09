// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'testimonies_controller.dart';

class TestimoniesScreen extends GetView<TestimoniesController> {
  const TestimoniesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Testimonies",
      ),
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20,),
          HeadingTextWidget(text: "List of Testimonies"),
          SizedBox(
            height: 15,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.testimoniesList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.testimoniesList[index],
                isLock: index!=0 && index!=1,
                onTap: () =>  index == 0 ?Get.toNamed(
                    Routes.cellPhonesScreen
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
    );
  }
}
