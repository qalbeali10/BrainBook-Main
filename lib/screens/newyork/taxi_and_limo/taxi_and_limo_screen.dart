import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'taxi_and_limo_controller.dart';



class TaxiLimoScreen extends GetView<TaxiLimoController> {
  const TaxiLimoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Taxi and Limo",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.taxiList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.taxiList[index],
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
    );
  }
}