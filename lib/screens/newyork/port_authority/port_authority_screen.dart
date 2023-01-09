import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/federal_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'port_authority_controller.dart';



class PortAuthorityScreen extends GetView<PortAuthorityController> {
  const PortAuthorityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Port Authority",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: controller.portList.length,
            itemBuilder: (contex, index) {
              return FederalCard(
                text: controller.portList[index],
                isLock: true,
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