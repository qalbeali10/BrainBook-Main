import 'package:brainbook/routes/app_routes.dart';
import 'package:get/get.dart';

class SHAD49Controller extends GetxController{

  List<String> shad49TextList =[
    "1. If you Uninstall this app, you will lose all of your reports. Do not use this app as your sole storage for your reports",
     "1. Your phone can be subpoenaed if you store reports on this device",
  ];
  List<String> shad49CardText = [
    "49 Face Page",
    "49 Narrative",
  ];

  List<String> shad49Routes = [
    Routes.facePageScreen,
    Routes.narrativeScreen,
  ];
}