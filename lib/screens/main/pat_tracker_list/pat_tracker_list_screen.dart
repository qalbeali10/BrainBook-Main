// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/delete_card.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pat_tracker_list_controller.dart';

class PATTrackerListScreen extends GetView<PATTrackerListController> {
  PATTrackerListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "PAT Tracker",
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            HeadingTextWidget(text: "List of PAT Tracker"),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: controller.pATdateTimeList.length,
              itemBuilder: (context, index) {
                return DeleteCard(
                  text: controller.pATdateTimeList[index],
                  onTapDelete: () {},
                  onTapCard: () => Get.toNamed(Routes.pATTrackerDetailScreen),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            ButtonWidget(
                title: "ADD",
                onTap: () => Get.toNamed(Routes.pATTrackerAddDetailsScreen)),
          ],
        ),
      ),
    );
  }
}
