// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_contains, prefer_const_constructors_in_immutables, sort_child_properties_last
import 'package:brainbook/APIS_DATA/APIs_Providers/Country_Providers/Country_Get_Providers.dart';
import 'package:brainbook/APIS_DATA/APIs_Providers/State_Provider/States_Get_Provider.dart';
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_screen_controller.dart';

class Home extends GetView<HomeController> {
  Home({required this.countryId, Key? key}) : super(key: key);
  final String countryId;
  final CountryGetProvider _countryGetProvider = CountryGetProvider();
  final StateGetProvider _stateGetProvider = StateGetProvider();

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
              height: 260,
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
                    height: 62,
                    // width: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18.0,
                      ),
                      child: GetBuilder<HomeController>(
                        init: HomeController(''),
                        builder: (_) {
                          return FutureBuilder(
                            future: _countryGetProvider.fetchCountry(),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                                List data = snapshot.data;
                                return DropdownButtonFormField(
                                  isExpanded: true,
                                  // key: controller.globalKey,
                                  hint: Text(
                                    "Select Country",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  items: data.map((item) {
                                    return DropdownMenuItem(
                                      child: Text(item.countryName),
                                      value: item.countryId,
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
                                  onChanged: (value) {
                                    // Handle changes to the dropdown value
                                  },
                                );
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              } else {
                                return CircularProgressIndicator();
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 62,
                    // width: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: FutureBuilder(
                        future: _stateGetProvider.fetchStates(countryId),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            List data = snapshot.data;
                            return DropdownButtonFormField(
                              isExpanded: true,
                              // key: controller.globalKey,
                              hint: Text(
                                "Select State",
                                style: TextStyle(fontSize: 13),
                              ),
                              items: data.map((item) {
                                return DropdownMenuItem(
                                  child: Text(item.state),
                                  value: item.stateId,
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
                              onChanged: (value) {
                                // Handle changes to the dropdown value
                              },
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return CircularProgressIndicator();
                          }
                        },
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
                          height: 62,
                          // width: 170,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: FutureBuilder(
                              future: _countryGetProvider.fetchCountry(),
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  List data = snapshot.data;
                                  return DropdownButtonFormField(
                                    isExpanded: true,
                                    //  key: controller.globalKey,
                                    hint: Text(
                                      "Select Country",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    items: data.map((item) {
                                      return DropdownMenuItem(
                                        child: Text(item.countryName),
                                        value: item.countryId,
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
                                    onChanged: (value) {
                                      // Handle changes to the dropdown value
                                    },
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                } else {
                                  return CircularProgressIndicator();
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 62,
                          // width: 170,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: FutureBuilder(
                              future: _countryGetProvider.fetchCountry(),
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  List data = snapshot.data;
                                  return DropdownButtonFormField(
                                    isExpanded: true,
                                    //  key: controller.globalKey,
                                    hint: Text(
                                      "Select Country",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    items: data.map((item) {
                                      return DropdownMenuItem(
                                        child: Text(item.countryName),
                                        value: item.countryId,
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
                                    onChanged: (value) {
                                      // Handle changes to the dropdown value
                                    },
                                  );
                                } else if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                } else {
                                  return CircularProgressIndicator();
                                }
                              },
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
