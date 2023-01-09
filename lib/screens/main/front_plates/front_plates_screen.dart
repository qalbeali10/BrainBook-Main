// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_nullable_for_final_variable_declarations

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/main/window_tint_laws/widgets/front_plates_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'front_plates_controller.dart';

class FrontPlatesScreen extends GetView<FrontPlatesController> {
  FrontPlatesScreen({Key? key}) : super(key: key);
  static const int? $bull = 0x2022;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Front Plates",
        txtBtnTitle: "Edit",
        onTap: () {},
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15,
            ),
            HeadingTextWidget(text: "Front License Plates"),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 330,
              margin: EdgeInsets.only(left: 7, right: 7),
              height: 270,
              // color: Colors.blue,
              child: Card(
                color: Colors.white,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white)),
                child: Column(
                  children: [
                    Text(
                      "Required",
                      style: TextStyle(
                          color: fontColorLight, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(left: 10),
                        itemCount: controller.requiredLIst.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 4,
                          crossAxisCount: 3,
                          mainAxisSpacing: 1.0,
                          crossAxisSpacing: 1.0,
                        ),
                        itemBuilder: (context, indux) {
                          return FrontPlateRichText(
                            text: controller.requiredLIst[indux],
                          );
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 330,
              height: 270,
              margin: EdgeInsets.only(left: 7, right: 7),
              // color: Colors.blue,
              child: Card(
                // margin: EdgeInsets.only(left: 20,right: 20,top: 40,bottom: 40),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white)),

                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      "Not Required",
                      style: TextStyle(
                          color: fontColorLight, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(left: 10),
                        itemCount: controller.notRequiredLIst.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 4,
                          crossAxisCount: 3,
                          mainAxisSpacing: 1.0,
                          crossAxisSpacing: 1.0,
                        ),
                        itemBuilder: (context, index) {
                          return FrontPlateRichText(
                            text: controller.notRequiredLIst[index],
                          );
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
