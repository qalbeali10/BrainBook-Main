import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/switch_state/switch_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchStateScreen extends GetView<SwitchStateController> {
  const SwitchStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Switch State",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 40,),
          HeadingTextWidget(text: "Have you switched to a new department in a different state?",),
          SizedBox(height: 60,),
          ButtonWidget(title: "CHANGE STATE", onTap: ()=>Get.toNamed(Routes.switchStateChangeScreen)),
        ],
      ),
    );
  }
}
