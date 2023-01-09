// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_constructors_in_immutables, no_leading_underscores_for_local_identifiers

import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/ask_a_cop/ask_a_cop_screen.dart';
import 'package:brainbook/screens/farorites/favorites_screen.dart';
import 'package:brainbook/screens/home/home_screen.dart';
import 'package:brainbook/screens/more/more_screen.dart';
import 'package:brainbook/screens/notebook/notebook_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
  final name = 'Lorem Ipsum';
  final email = 'Loremipsum@gmail.com';
  final currentIndex = 0.obs;
  final title = "Home".obs;

  List<String> bottomItem = [
    "Home",
    "Favorite",
    "Ask a Cop",
    "Note",
    "More",
  ];

  List<String> bottomImages = [
    "assets/startpage/HomeIcon.png",
    "assets/startpage/44.png",
    "assets/startpage/45.png",
    "assets/startpage/57.png",
    "assets/startpage/more.png",
  ];

  List<String> drawerImages = [
    "assets/startpage/76.png",
    "assets/startpage/77.png",
    "assets/startpage/78.png",
    "assets/startpage/79.png",
    "assets/startpage/80.png",
    "assets/startpage/75.png",
    "assets/startpage/74.png",
  ];

  List<String> drawerTitle = [
    "Profile",
    "Setting",
    "FAQs",
    "Go offline",
    "Support",
    "Privacy",
    "Logout",
  ];

  List<String> drawerRoutes = [
    Routes.profileScreen,
    Routes.settingsScreen,
    Routes.fAQsScreen,
    Routes.goOfflineScreen,
    Routes.supportScreen,
    Routes.privacyPolicyScreen,
    Routes.loginScreen,
  ];

  List<Widget> pages = [
    Home(),
    FavoritesScreen(),
    AskACopScreen(),
    NoteBookScreen(),
    MoreOptionScreen(),
  ];

  Widget get currentPage => pages[currentIndex.value];

  void changePage(int _index) {
    currentIndex.value = _index;
    switch (_index) {
      case 0:
        {
          title.value = 'Home';
        }
        break;
      case 1:
        {
          title.value = 'Favorite';
        }
        break;
      case 2:
        {
          title.value = 'Ask a Cop';
          Get.dialog(CumtomDialog());
        }
        break;
      case 3:
        {
          title.value = 'Note';
        }
        break;
      case 4:
        {
          title.value = 'More';
        }
        break;
    }
    print(currentIndex.value);
  }
}

class CumtomDialog extends StatelessWidget {
  CumtomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      //elevation: 0,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 12),
          Text(
            "Welcome to Ask a Cop",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 6),
          Text(
            "Talk about anything you want. Pocket Brainbook does not monitor this forum. If you have question visit the FAQ's section",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Container(
              width: 130,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ButtonWidget(
                title: "Ok",
                onTap: () => Get.back(),
                padding: EdgeInsets.symmetric(vertical: 10),
                borderRadiusGeometry: BorderRadius.circular(20),
                borderRadiusGeometry2: BorderRadius.circular(20),
              )),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
