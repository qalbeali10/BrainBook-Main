import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common_phrase_controller.dart';
import 'widgets/common_phrase_card.dart';

class CommonPhraseScreen extends GetView<CommonPhraseController> {
  CommonPhraseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
        title: Get.arguments,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: controller.globalKey,
            child: Column(
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
                const SizedBox(
                  height: 20,
                ),
                HeadingTextWidget(text: "Common phrases"),
                const SizedBox(
                  height: 25,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: controller.title.length,
                    itemBuilder: (context, index) {
                      return CommonPhraseCard(
                        title: controller.title[index].title,
                        subtitle: controller.title[index].subTitle,
                        arguments: [
                          controller.title[index].title,
                          controller.title[index].subTitle,
                          Get.arguments,
                        ],
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 65,
                      mainAxisSpacing: 12,
                      crossAxisCount: 1,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
