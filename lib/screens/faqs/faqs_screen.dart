// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/faqs/faqs_controller.dart';
import 'package:brainbook/screens/main/gang_slang/widgets/gang_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/values/colors.dart';

class FAQsScreen extends GetView<FAQsController> {
  const FAQsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "FAQ`s",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 15,),
              HeadingTextWidget(text: "Here are some FAQ`s"),
              SizedBox(height: 15,),
              ListView.builder(
                shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: controller.faqsList.length,
                  itemBuilder: (context,index){
                return GangSlangListWidget(
                  text: controller.faqsList[index],onTap: ()=>Get.toNamed(Routes.fAQsDetailScreen,arguments: controller.faqsList[index]),
                );
              }),
             // SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
