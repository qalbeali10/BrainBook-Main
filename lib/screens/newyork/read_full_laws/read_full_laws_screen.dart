// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'read_full_laws_controller.dart';

class ReadFullLawsScreen extends GetView<ReadFullLawsController> {
  const ReadFullLawsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Read Full Laws",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.only(left: 18.0),
           child: Text(controller.text,style: TextStyle(color: fontColorDark,),),
         ),
          SizedBox(
            height: 25,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.readLawList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.readLawList[index],
                onTap: () {}
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
