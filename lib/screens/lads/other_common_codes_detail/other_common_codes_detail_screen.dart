// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/screens/main/gang_slang/widgets/gang_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'other_common_codes_detail_controller.dart';

class OCCDetailScreen extends GetView<OCCDetailController> {
  const OCCDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: Get.arguments,
        ),
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
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
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return GangSlangListWidget(
                        onTap: (){},
                      //  =>Get.toNamed(Routes.courtNoDetailScreen,arguments: controller.oCCDetailList[index]),
                        text: controller.oCCDetailList[0],
                      );
                    },
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
