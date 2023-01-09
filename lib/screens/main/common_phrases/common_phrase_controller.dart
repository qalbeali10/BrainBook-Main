import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CommonPhraseController extends GetxController{

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  List<Player> title = [
    Player(title: "Against the wall", subTitle: "Contre le mur"),
    Player(title: "Answer", subTitle: "Répondez."),
    Player(title: "Any weapons?", subTitle: "Des armes?"),
    Player(title: "Are you diabetic?", subTitle: "Êtes-vous diabétique?"),
    Player(title: "Are you a citizen?", subTitle: "Êtes-vous un citoyen?"),
    Player(title: "Are you having trouble breathing?", subTitle: "Vous avez du mal à respirer ?"),
    Player(title: "Are you on a parole or probation?", subTitle: "Êtes-vous en liberté conditionnelle ou en.."),

  ];


}

class Player {
  String title,subTitle;
  Player({required this.title,required this.subTitle});
}