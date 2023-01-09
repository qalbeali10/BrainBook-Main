
// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cell_phones_controller.dart';

class CellPhonesScreen extends GetView<CellPhonesController> {
  const CellPhonesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: "Cell Phones",
        ),
        backgroundColor:  backgroundColor,
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  title: HeadingTextWidget(
                    text: "Lorem Ipsum",
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(controller.cellPhonesList[0]),
                  ),
                );
              }),
        )

    );
  }
}
