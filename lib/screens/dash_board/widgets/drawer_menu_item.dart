
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  DrawerMenuItem(
      {Key? key,
        this.text,
        this.icon,
        this.onClicked,
        this.iconColor,
        this.textColor,
      })
      : super(key: key);
  String? text;
  IconData? icon;
  VoidCallback? onClicked;
  Color? iconColor;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor ?? Colors.black,
        size: 25,
      ),
      title: Text(text!, style: TextStyle(fontSize: 15,color: textColor??Colors.black)),
      hoverColor: Colors.white70,
      onTap: onClicked,
    );
  }
}
