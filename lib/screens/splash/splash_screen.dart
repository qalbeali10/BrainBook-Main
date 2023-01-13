// ignore_for_file: unused_field
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  // final _getStorage = GetStorage();
  // final cc = Get.put(HomeController(''));
  // final ccl = Get.put(DashBoardController());
  // isPresent() {
  //   var data = _getStorage.read('data');
  //   try {
  //     if (data != null) {
  //       return true;
  //     } else {
  //       //   _getStorage.remove('data');
  //       return false;
  //     }
  //   } catch (e) {
  //     return false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child:
              // isPresent()
              //     ?
              SplashScreenView(
        navigateRoute:
            //  isPresent() ? DashBoard() :
            WelcomeScreen(),
        duration: 6000,
        imageSize: 130,
        imageSrc: "assets/startpage/logo.png",
        text: "The Ultimate App for \n             Police",
        textType: TextType.NormalText,
        textStyle: GoogleFonts.poppins(
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 22.0),
        backgroundColor: containerColor.withOpacity(0.35),
      )
          // :
          // DashBoard(),
          ),
    );
  }
}
