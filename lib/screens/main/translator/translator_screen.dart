import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/home_card.dart';
import 'package:brainbook/screens/main/translator/translator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorScreen extends GetView<TranslatorController> {
  TranslatorScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar:  MyAppBar(
        title: "Translator",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "Speak & Translate"),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.SpeakList.length,
                itemBuilder: (context, index) {
                  return HomeCard(
                    onTap: () => Get.toNamed(controller.routes[index],
                        arguments: controller.SpeakList[index]),
                    text: controller.SpeakList[index],
                    imagePath: controller.SpeakImagesList[index],
                    isLock: index != 0,
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 65,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                )),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "Point & Translate"),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.PointList.length,
                itemBuilder: (context, index) {
                  return HomeCard(
                    onTap: () {},
                    text: controller.PointList[index],
                    imagePath: controller.PointImagesList[index],
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 65,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                )),
          ],
        ),
      ),
    );
  }
}
