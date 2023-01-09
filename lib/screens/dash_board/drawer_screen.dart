// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/screens/dash_board/dash_board_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/drawer_header.dart';

class NavigationDrawerScreen extends GetView<DashBoardController> {
  NavigationDrawerScreen({Key? key}) : super(key: key);
  //NavigationDrawerScreen( this.token,  {Key? key}) : super(key: key);

  //ProfileController profileController = Get.find();

  final padding = EdgeInsets.symmetric(horizontal: 20);
//final String token;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeaderr(
              name: controller.name,
              email: controller.email,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: controller.drawerImages.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    top: index == controller.drawerImages.length - 1
                        ? MediaQuery.of(context).size.height / 4.5
                        : 0,
                  ),
                  child: ListTile(
                    leading: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Image.asset(
                        controller.drawerImages[index],
                      ),
                    ),
                    title: Text(
                      controller.drawerTitle[index],
                      style: TextStyle(
                          fontSize: 15,
                          color: index == controller.drawerTitle.length - 1
                              ? fontColorDark
                              : Colors.black),
                    ),
                    hoverColor: Colors.white70,
                    // onTap: ()=>Get.toNamed(controller.drawerRoutes[index]==0?profileController.Profile():controller.drawerRoutes[index],arguments: {token}),
                    onTap: () => Get.toNamed(
                      controller.drawerRoutes[index],
                    ),
                    // onTap: ()=>Get.toNamed(controller.drawerRoutes[index],arguments: token),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
