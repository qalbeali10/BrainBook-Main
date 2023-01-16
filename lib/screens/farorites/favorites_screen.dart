// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'favorites_controller.dart';

class FavoritesScreen extends GetView<FavoritesController> {
  FavoritesScreen({Key? key}) : super(key: key);
  final bool fav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: controller.globalKey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(gradient: linearColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 15),
                  child: TextFormFieldWidget(
                    title: "Search",
                    controller: controller.search,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 188.0),
                child: HeadingTextWidget(
                  text: "You have no favorites!",
                ),
              )
              //   fav==false? Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              //     children: [
              //       SizedBox(
              //         height: 20,
              //       ),
              //       HeadingTextWidget(text: "Today"),
              //       SizedBox(
              //         height: 20,
              //       ),
              //       Container(
              //         height: 200,
              //         child: ListView.builder(
              //             physics: BouncingScrollPhysics(),
              //             shrinkWrap: true,
              //             itemCount: 2,
              //             itemBuilder: (context, index) {
              //               return DeleteCard(
              //                 text: controller.favListTitle[index],
              //                 onTapDelete: () {},
              //                 onTapCard: () {},
              //                 subtitile: Text(
              //                   controller.favListSubtitle[index],
              //                   style: TextStyle(color: fontColorLight),
              //                 ),
              //               );
              //             }),
              //       ),
              //       SizedBox(
              //         height: 20,
              //       ),
              //       HeadingTextWidget(text: "Last Week"),
              //       SizedBox(
              //         height: 20,
              //       ),
              //       Container(
              //         height: 200,
              //         child: ListView.builder(
              //             shrinkWrap: true,
              //             itemCount: 2,
              //             itemBuilder: (context, index) {
              //               return DeleteCard(
              //                 text: controller.favListTitle[index],
              //                 onTapDelete: () {},
              //                 onTapCard: () {},
              //                 subtitile: Text(
              //                   controller.favListSubtitle[index],
              //                   style: TextStyle(color: fontColorLight),
              //                 ),
              //               );
              //             }),
              //       )
              //     ],
              //   ):Center(
              // child: HeadingTextWidget(
              //   text: "You have no favorties!",
              // ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
