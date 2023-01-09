import 'dart:async';

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'audio_controller.dart';

class AudioScreen extends GetView<AudioController> {
  AudioScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar:  MyAppBar(
        title: Get.arguments[2],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "English",
                  style: TextStyle(fontSize: 14),
                ),
                GestureDetector(
                  onTap: (){
                   // print(Get.arguments.length );
                  },
                  child: Image.asset(
                    favorite,
                    height: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Text(
              Get.arguments[0],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "French",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
             Text(
              Get.arguments[1],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: fontColorDark),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Audio",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: Container(
                  height: 32,
                  width: 33,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 0,
                          blurRadius: 5),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: InkWell(
                    onTap: () {
                        controller.speak(Get.arguments[1]);
                        Timer.periodic(
                          const Duration(milliseconds: 70),
                              (timer) {

                            if (controller.sliderValue.value <= Get.arguments[1].toString().length -1) {
                              controller.sliderValue.value =
                                  controller.sliderValue.value + 1;

                            } else {
                              timer.cancel();
                              controller.sliderValue.value = 0.0;
                            }
                          },
                        );
                      },
                    child: Obx(()=>
                       Icon(
                         controller.sliderValue.value >= 1
                                    ? controller.sliderValue.value <= 14
                                    ? Icons.pause
                                    : Icons.play_arrow
                                    : Icons.play_arrow,
                                size: 30,
                                color: fontColorDark,
                              ),
                    ),
                  ),
                ),
                title: Obx((){
                  return Slider(
                    value: controller.sliderValue.value,
                    min: 0,
                     max: Get.arguments[1].length.toDouble(),
                    //divisions: 10,
                    activeColor: fontColorLight,
                    inactiveColor: Colors.grey,
                    // label: 'Set volume value',
                    onChanged: (double newValue) {},
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    },
                  );
                }

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
