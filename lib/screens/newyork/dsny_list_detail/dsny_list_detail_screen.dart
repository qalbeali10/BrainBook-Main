// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dsny_list_detail_controller.dart';

class DSNYListDetailScreen extends GetView<DSNYListDetailController> {
   DSNYListDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Get.arguments[1],image: true,
      ),

      backgroundColor:  backgroundColor,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 75,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  // width: 320,
                  child: Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                    child: Center(
                        child: HeadingTextWidget(
                          text:index==0?Get.arguments[0]["title"]:Get.arguments[0]["code"],
                          color: index == 1,
                          textColor: fontColorLight,
                        )),
                  ),
                );
              }),
        ],
      ),
    );
  }
}