import 'package:brainbook/core/theme/values/colors.dart';
import 'package:flutter/material.dart';

class TrafficCodeCard extends StatelessWidget {
  const TrafficCodeCard({
    Key? key,
    required this.title,
    required this.degree,
    required this.lowtype,
    required this.description,
  }) : super(key: key);

  final String title;
  final String degree;
  final String lowtype;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Card(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 10,
        ),
        color: Colors.white,
        child: ListTile(
          title:  Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(title),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(degree,style: onlyLightColor,),
              Text(lowtype,style: onlyLightColor,),
              Text(description,style: onlyLightColor,),
            ],
          ),
          trailing:  GestureDetector(
            onTap: (){},
            child: Image.asset(
              "assets/startpage/58.png",
              scale: 3,
            ),
          ),
        ),
      ),
    );
  }
}