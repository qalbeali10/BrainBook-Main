


import 'package:brainbook/routes/app_routes.dart';
import 'package:get/get.dart';

class NYCSummonsController extends GetxController{

  List<String> nycList = [
    "A-Parkers",
    "B-Movers",
    "C-Criminal",
    "OATH ECB Summons",
    "B&C by Category",
    "Accustory Texts",
    "Court Locations",
    "Terms & Holidays",

  ];

  List<String> nycSummonsRoutes = [
  "  Routes.dSNYScreen,",
  "  Routes.dSNYScreen,",
  "  Routes.dSNYScreen,",
     Routes.oATHECBSummonsScreen,
     Routes.bandCCategoryScreen,
    "  Routes.dSNYScreen,",
    Routes.courtLocationScreen,
    "  Routes.dSNYScreen,",
    "  Routes.dSNYScreen,",
  ];
}