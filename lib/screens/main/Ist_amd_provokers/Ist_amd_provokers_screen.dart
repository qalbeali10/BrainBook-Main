// ignore_for_file: file_names, prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Ist_amd_provokers_controller.dart';

class IstAmdProvokers extends GetView<IstAmdProvokersController> {
   IstAmdProvokers({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(
    title: "1st Amd Provokers",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "1st Amd Provokers"),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("They call themselves 1st Amendment Auditors. They should be called “Provokers” because that’s exactly what they do. They travel aal over the US harassing public civilian employees and police officers in hopes to obtain a favorable lawsuit and social media folowwers."),
            ),
            Divider(color: Colors.black,),
            HeadingTextWidget(text: "Here are some options"),
            SizedBox(height: 20,),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                ),
                itemCount: controller.optionList.length,
                itemBuilder: (context, index) {
                  return FederalCard(
                    text: controller.optionList[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
