import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:brainbook/screens/newyork/doc/doc_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DOCScreen extends GetView<DOCController> {
  const DOCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "DOC",
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.docList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.docList[index],
                isLock: index!=0 && index!=5,
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
