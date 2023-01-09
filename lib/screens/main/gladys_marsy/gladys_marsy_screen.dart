import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gladys_marsy_controller.dart';

class GladysMarsyScreen extends GetView<GladysMarsyController> {
  GladysMarsyScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
        title: "Gladys R. / Marsy`s",
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: GridView.builder(
            itemCount: 2,
            itemBuilder: (contex, index) {
              return FederalCard(
                onTap: ()=>Get.toNamed(controller.routes[index],arguments:controller.gladysMarsy[index] ),
                  text: controller.gladysMarsy[index]);
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 60,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
            ),
          ),
        ),
      ),
    );
  }
}
