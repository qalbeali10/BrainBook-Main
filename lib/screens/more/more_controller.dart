// ignore_for_file: camel_case_types

import 'package:brainbook/routes/app_routes.dart';
import 'package:get/get.dart';

class MoreOptionController extends GetxController{

 List<MoreOption>  moreOptionList = [
  MoreOption(title: "Important information", image: "assets/startpage/67.png",),
  MoreOption(title: "Switch state", image: "assets/startpage/68.png",),
  MoreOption(title: "Redeem card", image: "assets/startpage/69.png",),
  MoreOption(title: "Subscribe", image: "assets/startpage/70.png",),
 ];

 List<String> moreOptionRoutes = [
  Routes.importantInfoScreen,
  Routes.switchStateScreen,
  Routes.redeemCardScreen,
  Routes.subscribeScreen,
  // ImportantInfoScreen(),
  // SwitchStateScreen(),
  // RedeemCardScreen(),
  // SubscriptionScreen(),
 ];

}
class MoreOption{
 MoreOption({required this.title,required this.image,});
 final String image;
 final String title;

}