import 'package:brainbook/routes/app_routes.dart';
import 'package:get/get.dart';

class YourDeptNewYorkController extends GetxController{

  List<String> newYorkDeptList = [
    "DSNY",
    "DOC",
    "NYPD",
    "Nassau County",
    "Port Authority",
    "Suffolk County",
    "Taxi and Limo",
    "Yonkers",
  ];

  List<String> newYorkDeptRoutes = [
    Routes.dSNYScreen,
    Routes.dOCScreen,
    Routes.nYPDScreen,
    Routes.nassauCountyScreen,
    Routes.portAuthorityScreen,
    Routes.suffolkCountyScreen,
    Routes.taxiLimoScreen,
    Routes.yonkersScreen,
  ];

}