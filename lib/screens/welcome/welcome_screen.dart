import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/core/theme/values/text_style.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(welcomeImage, height: 190),
          const SizedBox(height: 50),
          Text(
            "Welcome",
            style: textStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Create an account or login to get started.",
              textAlign: TextAlign.center, style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 100,
          ),
          ButtonWidget(
            title: "LOGIN",
            onTap: () => Get.toNamed(Routes.loginScreen),
          ),
          SizedBox(
            height: 30,
          ),
          ButtonWidget(
            title: "REGISTER",
            onTap: ()=>Get.toNamed(Routes.signupScreen),
          ),
        ],
      ),
    );
  }
}
