// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/delete_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'location_controller.dart';

class LocationScreen extends GetView<LocationController> {
  LocationScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Location",
      ),
      backgroundColor:  backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Form(
              key: controller.globalKey,
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  SizedBox(height: 15,),
                  HeadingTextWidget(text: "Last Week"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 220,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return DeleteCard(
                            text: controller.addressList[0],
                            onTapDelete: () {},
                            onTapCard: ()=> Get.toNamed(Routes.locationMoreInfoScreen),
                            subtitile: Text(
                              controller.dateTimeList[0],
                              style: TextStyle(color: fontColorLight),
                            ),
                          );
                        }),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  HeadingTextWidget(text: "Last Month"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 220,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return DeleteCard(
                            text: controller.addressList[0],
                            onTapDelete: () {},
                            onTapCard: () {},
                            subtitile: Text(
                              controller.dateTimeList[0],
                              style: TextStyle(color: fontColorLight),
                            ),
                          );
                        }),
                  ),
                  ],
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 12.0,
              child: InkWell(
                onTap: ()=>Get.toNamed(Routes.locationAddDetailsScreen),
                child: Image.asset(
                  'assets/startpage/48.png',
                  height: 70.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
