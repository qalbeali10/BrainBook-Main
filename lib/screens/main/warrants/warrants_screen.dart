// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'warrents_controller.dart';

class Warrants extends GetView<WarratnsController> {
  Warrants({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      appBar:  MyAppBar(title: "Warrants",),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              HeadingTextWidget(text: "Search Warrants"),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  "A search warrant may be issued upon any of the \nfollowing grounds: ",
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.warrantLsit.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListViewText(

                      text: controller.warrantLsit[index],
                      textColor:index == controller.warrantLsit.length-1? fontColorDark:Colors.black,
                        divider:index == controller.warrantLsit.length-1?Divider(height: 10,color: Colors.black,):Container(),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}




