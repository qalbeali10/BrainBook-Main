import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/listview_text.dart';
import 'package:brainbook/screens/newyork/color_codes/color_codes_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ColorCodesScreen extends GetView<ColorCodesController> {
  ColorCodesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Color Codes",),
       backgroundColor:  backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 20,),
            HeadingTextWidget(text: "List of color codes:"),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context,index){
                  return ListViewText( text: controller.colorCodesLsit[0],);

                }),
          ],
        ),
      ),
    );
  }
}