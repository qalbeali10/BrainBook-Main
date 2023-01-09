import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonPhraseCard extends StatelessWidget {
  const CommonPhraseCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.arguments,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final List<dynamic> arguments;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(bottom: 15.0, top: 10),
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 12, color: fontColorDark),
            ),
          ),
          trailing: Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 5),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: InkWell(
                onTap: () => Get.toNamed(
                  Routes.audioScreen,
                  arguments: arguments,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    play,
                    height: 10,
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}