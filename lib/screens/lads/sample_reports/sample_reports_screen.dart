
// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sample_reports_controller.dart';

class SampleReportsScreen extends GetView<SampleReportsController> {
  const SampleReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Sample Reports",
      ),
      backgroundColor:  backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              HeadingTextWidget(text: "List of Sample Reports"),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: controller.sampleReportsCardList.length,
                itemBuilder: (contex, index) {
                  return FederalCard(
                    text: controller.sampleReportsCardList[index],
                    isLock: true,
                    onTap: () {},
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
              ),
              SizedBox(height: 20,),
              HeadingTextWidget(text: "List of Sample Narrative"),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: controller.sampleNarrativeCardList.length,
                itemBuilder: (contex, index) {
                  return FederalCard(
                    text: controller.sampleNarrativeCardList[index],
                    isLock: true,
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
      ),
    );
  }
}
