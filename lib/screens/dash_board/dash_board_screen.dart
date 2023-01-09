// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/screens/dash_board/dash_board_controller.dart';
import 'package:brainbook/screens/dash_board/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends GetView<DashBoardController> {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true,
        drawer: NavigationDrawerScreen(),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: linearColor),
          ),
          title: Text(controller.title.value),
          centerTitle: true,
          actions: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
              child: GestureDetector(
                onTap: () {
                  final _getStorage = GetStorage();
                  _getStorage.remove('data');
                  Navigator.pop(Get.context!);
                },
                child: Image.asset(
                  logout,
                ),
              ),
            )
          ],
        ),
        body: controller.currentPage,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              onTap: controller.changePage,
              selectedItemColor: Color(0xff073763),
              unselectedItemColor: Colors.black45,
              unselectedLabelStyle: GoogleFonts.poppins(
                color: Colors.black45,
              ),
              type: BottomNavigationBarType.fixed,
              items: List.generate(
                controller.pages.length,
                (index) => BottomNavigationBarItem(
                  icon: Image.asset(
                    controller.bottomImages[index],
                    height: 40,
                    color: index == controller.currentIndex.value
                        ? bottomImageSelectedColor
                        : bottomImageUnSelectedColor,
                  ),
                  label: controller.bottomItem[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
