import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordUpdate extends StatelessWidget {
  const PasswordUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 75,
                  ),
                  const Text(
                    "Forgot Password",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                passwordUpdateImage,
                height: 190,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Password updated",
                style: textStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Your password has been updated!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 35,
              ),
              ButtonWidget(
                title: "LOGIN",
                onTap: () {
                  Get.back();
                  Get.back();
                  Get.back();
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
