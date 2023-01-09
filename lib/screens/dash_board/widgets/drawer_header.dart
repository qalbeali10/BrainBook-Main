// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class DrawerHeaderr extends StatelessWidget {
  DrawerHeaderr({Key? key, this.name, this.email}) : super(key: key);
  String? name;
  String? email;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff6fa8dc),
              Color(0xff3e72a2),
              Color(0xff073763),
            ]),
      ),
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          SizedBox(width: 20),
          Text(
            name!,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            email!,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
