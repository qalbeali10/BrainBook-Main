// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'court_locations_controller.dart';

class CourtLocationScreen extends GetView<CourtLocationController> {
  const CourtLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Court Location",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          HeadingTextWidget(text: "List of Court Locations"),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  height: 90,
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  child: Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Text(
                          controller.courtTile[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: fontColorDark),
                        ),
                      ),
                      subtitle: Text(controller.courtSubtitle[0]),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
