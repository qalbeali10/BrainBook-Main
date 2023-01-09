import 'package:brainbook/core/theme/values/colors.dart';
import 'package:flutter/material.dart';

class TrespasserCard extends StatelessWidget {
  const TrespasserCard({
    Key? key,
    required this.image,
    required this.heading,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String heading;
  final String title;
  final String subtitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 100,
          width: 320,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                    //  color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    image,
                    // trespasserAPBController.imageList[index],
                    scale: 3.0,
                  )),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    heading,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    title,
                    style: TextStyle(color: fontColorLight),
                  ),
                  Text(subtitle),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}