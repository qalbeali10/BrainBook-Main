// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class GangSlangListWidget extends StatelessWidget {
  GangSlangListWidget({Key? key, required this.text, required this.onTap})
      : super(key: key);

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: Colors.white,
          child: ListTile(
              title: Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
          shape: RoundedRectangleBorder(
            // side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
