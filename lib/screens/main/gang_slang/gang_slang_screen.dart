import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gang_slang_controller.dart';
import 'widgets/gang_card.dart';

class GangSlangScreen extends GetView<GangSlangController> {
  GangSlangScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
        title: "Gang Slang",
      ),
      body: SafeArea(
        child: SingleChildScrollView(

          child: Form(
            key: controller.globalKey,
            child: Column(
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
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: 20),
                  shrinkWrap: true,
                  itemCount: controller.gangList.length,
                  itemBuilder: (context, index) {
                    return GangSlangListWidget(
                      onTap: ()=>Get.toNamed(Routes.gangSlangDetailScreen,arguments: controller.gangList[index]),
                      text: controller.gangList[index],
                    );
                  },

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

