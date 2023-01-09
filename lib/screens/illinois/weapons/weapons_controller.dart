import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeaponsController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<String> weaponsList = [
    "Ammunition - Armor Piercing",
    "Ammunition - Minor in possession",
    "Ammunition - Possession on school grounds",
    "Ammunition - Sell to minor",
    "Ammunition - In school zone",
    "Ammunition - billy club, possession of",
    "Ammunition - Knife or dagger",
  ];

}