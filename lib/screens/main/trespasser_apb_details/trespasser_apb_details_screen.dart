// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'trespasser_apb_details_controller.dart';

class TrespasserApbDetailsScreen extends GetView<TrespasserApbDetailsController> {
   TrespasserApbDetailsScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Trespasser",
        txtBtnTitle: "Edit",
        onTap: () {},
      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            HeadingTextWidget(text: "Trespassers details"),
            SizedBox(height: 10,),
            Card(
                //color: Colors.red,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
                // margin: EdgeInsets.symmetric(
                //   horizontal: 7,
                // ),
                child: Image.asset(
                  Get.arguments,
                  width: 330,
                  height: 110,
                )),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text(controller.trespasserDetailsTitle[0]),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 45.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text(controller.trespasserDetailsTitle[1]),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Address",style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    Text(controller.trespasserDetailsTitle[2]),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Police Department",style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    Text(controller.trespasserDetailsTitle[3]),
                  ],
                ),

              ],
            ),
            SizedBox(height: 20,),
            Text("Other Notes",style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            Text(controller.trespasserDetailsTitle[4]),
          ],
        ),
      ),
    );
  }
}
