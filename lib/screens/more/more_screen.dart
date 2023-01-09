// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'more_controller.dart';

class MoreOptionScreen extends GetView<MoreOptionController> {
  MoreOptionScreen({Key? key}) : super(key: key);
  //MoreOptionController moreOptionController = Get.put(MoreOptionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 25,
          ),
          HeadingTextWidget(text: "Here are some more options."),
          ListView.builder(
              shrinkWrap: true,
              itemCount: controller.moreOptionList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    controller.moreOptionList[index].image,
                    scale: 3,
                  ),
                  title: Transform.translate(
                      offset: Offset(-60, 0),
                      child: TextButton(
                        child: Text(
                          controller.moreOptionList[index].title,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        onPressed: () =>
                            Get.toNamed(controller.moreOptionRoutes[index]),
                      )),
                );
              })
        ],
      ),
    );
  }
}
