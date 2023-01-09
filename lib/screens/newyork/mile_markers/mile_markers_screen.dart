import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/newyork/mile_markers/mile_markers_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MileMarkersScreen extends GetView<MileMarkersController> {
  const MileMarkersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
    title: "Mile Markers",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.mileList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.mileList[index],
                onTap: () {}
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
