import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dead_checklist_controller.dart';

class DeadCheckListScreen extends GetView<DeadCheckListController> {
  DeadCheckListScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Dead Checklist",),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const SizedBox(height: 20,),
              HeadingTextWidget(text: "These are general procedures"),
              const Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  "Refer to your department policy regarding dead persons. ",
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.deadCheckList.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index){
                    return ListViewText( text: controller.deadCheckList[index],);

                  }),
            ],
          ),
        ),
      ),
    );
  }
}