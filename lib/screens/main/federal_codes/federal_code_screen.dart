import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/main/federal_codes/federal_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FederalCode extends GetView<FederalCodeController> {
  FederalCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
    title: "Federal Codes",
      ),
      body: SafeArea(
        child: Container(
    margin: EdgeInsets.only(top: 20),
    child: GridView.builder(
          itemCount: controller.federalCoder.length,
          itemBuilder: (context, index) {
            return FederalCard(
              text: controller.federalCoder[index],
              isLock: true,
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // maxCrossAxisExtent: 150,
            mainAxisExtent: 60,
            childAspectRatio: 2,
            //crossAxisSpacing: 3,
            mainAxisSpacing: 20, crossAxisCount: 2,
          )),
        ),
      ),
    );
  }
}
