// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/home_card.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notebook_controller.dart';

class NoteBookScreen extends GetView<NoteBookController> {
  NoteBookScreen({Key? key}) : super(key: key);

  //NoteBookController noteBookController = Get.put(NoteBookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      SizedBox(
        height: 15,
      ),
      HeadingTextWidget(text: "Digital Notebook"),
      // SizedBox(height: 15,),
      Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Text(
          "Note: Notes on your device can be subpoenaed in court",
          style: TextStyle(fontSize: 12, color: fontColorDark),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      SizedBox(
        height: Get.height * 0.37,
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                //crossAxisSpacing: 5.0,
                childAspectRatio: 2.7),
            itemCount: controller.cardImageList.length,
            itemBuilder: (context, index) {
              return HomeCard(
                  onTap: ()=> index==0?Get.toNamed(Routes.locationScreen):null,
                  text: controller.cardTextList[index],
                  imagePath: controller.cardImageList[index]);
            }),
      ),
      Divider(color: Colors.black,),
      HeadingTextWidget(text: "Add your own codes by category"),
      SizedBox(
        height: 15,
      ),
      GridView.builder(
        shrinkWrap: true,
        itemCount: controller.categoryImageList.length,
        itemBuilder: (context, indx) {
          return    Column(
            children: [
              GestureDetector(
                child: Image.asset(
                  controller.categoryImageList[indx],
                  height: 40,
                ),onTap: ()=>indx==0?Get.toNamed(Routes.trafficCodeScreen):null,
              ),
              SizedBox(
                height: 7
              ),
              Text(
                controller.categoryNameList[indx],
              ),
            ],
          );
        },
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 3.0,
            mainAxisSpacing: 3.0),
      ),
    ],
      ),
    );
  }
}
