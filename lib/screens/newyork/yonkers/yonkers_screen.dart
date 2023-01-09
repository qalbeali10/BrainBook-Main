import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'yonkers_controller.dart';



class YonkersScreen extends GetView<YonkersController> {
  const YonkersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: "Yonkers",
        ),
        backgroundColor:  backgroundColor,
        body: Column(
          children: [
            SizedBox(height: 20,),
            GridView.builder(
              shrinkWrap: true,
              itemCount: controller.yonkersList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.yonkersList[index],
                  isLock: index==0,
                  onTap: () {},
                  // => Get.toNamed(
                  //   controller.deptRoutes[index],
                  // ),
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
      ),
    );
  }
}