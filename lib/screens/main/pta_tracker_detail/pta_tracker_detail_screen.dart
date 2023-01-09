// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/screens/main/pta_tracker_detail/pta_tracker_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PATTrackerDetailScreen extends GetView<PtaTrackerDetailController> {
  const PATTrackerDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "PAT Tracker",
        txtBtnTitle: "Edit",
        onTap: () {},
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            HeadingTextWidget(text: "PAT Tracker Details"),
            Container(
              height: 100,
              child: Card(
               // color: Colors.red,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("Date"),
                        Text("17-Dec-2021",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("Time"),
                        Text("6:00 PM",style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 150,
              child: Card(
                // color: Colors.red,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Running"),
                            Text("7",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Push-ups"),
                            Text("12",style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Other Activity"),
                            Text("12",style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Sit-ups"),
                            Text("7",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Obstacle Course"),
                            Text("12",style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text("Pull-ups"),
                            Text("12",style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
