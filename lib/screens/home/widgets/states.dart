// ignore_for_file: prefer_const_constructors

import 'package:brainbook/global_widgets/home_card.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen_controller.dart';

class StateMainHomePage extends GetView<HomeController> {
  const StateMainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.mainHomePage.length,
      itemBuilder: (context, index) {
        return HomeCard(
          onTap: () => Get.toNamed(controller.mainPageRoutes[index]),
          text: controller.mainHomePage[index].text,
          imagePath: controller.mainHomePage[index].image,
          isLock: index == 17 || index == 19 || index == 20,
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 60,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
      ),
    );
  }
}

class IllinoisHomePage extends GetView<HomeController> {
  const IllinoisHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          YourDepartmentCard(
            onTap: () => Get.toNamed(Routes.yourDeptScreen),
          ),
          // HomeCard(onTap: (){},text: "Your Department",imagePath: "assets/illinoishomepage/1.png",),
          SizedBox(
            height: 6,
          ),
          GridView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.illinoisPage.length,
            itemBuilder: (context, index) {
              return HomeCard(
                onTap: () => index == 5 ||
                        index == 20 ||
                        index == 22 ||
                        index == 23 ||
                        index == 24 ||
                        index == 25 ||
                        index == 26 ||
                        index == 28 ||
                        index == 29
                    ? null
                    : Get.toNamed(controller.illinoisPageRoutes[index]),
                text: controller.illinoisPage[index].text,
                imagePath: controller.illinoisPage[index].image,
                isLock: index == 5 || index == 20 || index == 22,
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 60,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class NewYorkHomePage extends GetView<HomeController> {
  const NewYorkHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          YourDepartmentCard(
            onTap: () => Get.toNamed(Routes.yourDeptNewYorkScreen),
          ),
          // HomeCard(onTap: (){},text: "Your Department",imagePath: "assets/illinoishomepage/1.png",),
          SizedBox(
            height: 6,
          ),
          GridView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.newYorkPage.length,
            itemBuilder: (context, index) {
              return HomeCard(
                onTap: () => index == 23 ||
                        index == 25 ||
                        index == 30 ||
                        index == 32 ||
                        index == 34
                    ? null
                    : Get.toNamed(controller.newYorkPageRoutes[index]),
                text: controller.newYorkPage[index].text,
                imagePath: controller.newYorkPage[index].image,
                isLock: index == 34,
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 60,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class LASDHomePage extends GetView<HomeController> {
  const LASDHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 6,
          ),
          GridView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.lASDPage.length,
            itemBuilder: (context, index) {
              return HomeCard(
                onTap: () => index == 0 ||
                        index == 7 ||
                        index == 8 ||
                        index == 11 ||
                    index == 14 ||
                        index == 15 ||
                        index == 16 ||
                        index == 18 ||
                        index == 20 ||
                        index == 22 ||
                    index == 28 ||
                    index == 29 ||
                        index == 31 ||
                        index == 33 ||
                        index == 35 ||
                        index == 40 ||
                        index == 41 ||
                        index == 42 ||
                        index == 48 ||
                        index == 50 ||
                        index == 52 ||
                        index == 56 ||
                        index == 57 ||
                        index == 59 ||
                        index == 64
                    ? null
                    : Get.toNamed(controller.lASDPageRoutes[index]),
                text: controller.lASDPage[index].text,
                imagePath: controller.lASDPage[index].image,
                isLock: index == 0 || index == 20 || index == 22,
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 60,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class YourDepartmentCard extends StatelessWidget {
  const YourDepartmentCard({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 90),
            title: Text(
              "Your Department",
              style: TextStyle(fontSize: 11.5),
            ),
            leading: Image.asset(
              "assets/illinoishomepage/1.png",
              height: 35,
            ),
          ),
        ),
      ),
    );
  }
}
