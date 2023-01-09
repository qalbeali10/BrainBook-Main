// ignore_for_file: prefer_const_constructors, file_names
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'b&c_category_controller.dart';

class BandCCategoryScreen extends GetView<BandCCategoryController> {
  const BandCCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "B&C Category",
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15,
            ),
            HeadingTextWidget(text: "List of B&C Category"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.bandCList.length,
              itemBuilder: (contex, index) {
                return FederalCard(
                  text: controller.bandCList[index],
                  isLock: index != 0 && index != 1,
                  onTap: () {},
                  // => Get.toNamed(
                  //   controller.newYorkDeptRoutes[index],
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
