// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_contains, prefer_const_constructors_in_immutables
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_screen_controller.dart';

class Home extends GetView<HomeController> {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
            //   child: InkWell(
            //     onTap: () {
            //       final _getStorage = GetStorage();
            //       _getStorage.remove('data');
            //       // Navigator.pop(Get.context!);
            //     },
            //     child: Text('data'),
            //   ),
            // ),
            Container(
              //color: Colors.blue,
              height: 250,
              decoration: BoxDecoration(gradient: linearColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  HeadingTextWidget(
                    text: "The ultimate app for police",
                    color: true,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 57,
                    // width: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18.0,
                      ),
                      child: GetBuilder<HomeController>(
                        init: HomeController(''),
                        builder: (_) {
                          return DropdownButtonFormField(
                            isExpanded: true,
                            //key: controller.globalKey,
                            hint: Text(
                              "Select Country",
                              style: TextStyle(fontSize: 13),
                            ),
                            onChanged: (String? value) {
                              controller.val.value = value!;
                            },
                            items: controller.Countries.map((countries) {
                              return DropdownMenuItem(
                                value: countries,
                                child: Text(
                                  countries,
                                  style: TextStyle(fontSize: 13),
                                ),
                              );
                            }).toList(),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabled: false,
                              enabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 57,
                    // width: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: DropdownButtonFormField(
                        isExpanded: true,
                        //key: controller.globalKey,
                        hint: Text(
                          "Select state",
                          style: TextStyle(fontSize: 13),
                        ),
                        onChanged: (String? value) {
                          controller.val.value = value!;
                        },
                        items: controller.States.map((states) {
                          return DropdownMenuItem(
                            value: states,
                            child: Text(
                              states,
                              style: TextStyle(fontSize: 15),
                            ),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabled: false,
                          enabledBorder: InputBorder.none,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 57,
                          // width: 170,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              //key: controller.globalKey,
                              hint: Text(
                                "County",
                                style: TextStyle(fontSize: 13),
                              ),
                              onChanged: (String? value) {
                                controller.val.value = value!;
                              },
                              items: controller.Cities.map((city) {
                                return DropdownMenuItem(
                                  value: city,
                                  child: Text(
                                    city,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                );
                              }).toList(),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabled: false,
                                enabledBorder: InputBorder.none,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 57,
                          // width: 170,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              //key: controller.globalKey,
                              hint: Text(
                                "City",
                                style: TextStyle(fontSize: 13),
                              ),
                              onChanged: (String? value) {
                                controller.val.value = value!;
                              },
                              items: controller.Counties.map((county) {
                                return DropdownMenuItem(
                                  value: county,
                                  child: Text(
                                    county,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                );
                              }).toList(),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabled: false,
                                enabledBorder: InputBorder.none,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.52,
              child: Obx(() =>
                  controller.Cities.indexOf(controller.val.value) == -1
                      ? controller.pages[0]
                      : controller.pages[
                          controller.Cities.indexOf(controller.val.value)]),
            ),
            // SizedBox(
            //   height: 9,
            // ),
          ],
        ),
      ),
    );
  }
}
