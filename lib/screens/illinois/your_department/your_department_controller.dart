import 'package:brainbook/routes/app_routes.dart';
import 'package:get/get.dart';

class YourDeptController extends GetxController{

  List<String> deptList = [
    "Bellwood PD",
    "Lake County",
    "Chicago PD",
    "Lewis University PD",
    "Cicero PD",
    "Naperville",
    "Cook County",
    "Springfield",
    "Dupage County",
    "Rockford PD",
    "Grayslake PD",
    "Romeoville PD",
    "Hometown PD",
    "Will County",
    "Joliet",
  ];

  List<String> deptRoutes = [
    Routes.bellwoodPDScreen,
    Routes.lakeCountryScreen,
    Routes.chicagoPDScreen,
    Routes.lewisUniversityPDScreen,
    Routes.ciceroPDScreen,
    Routes.napervilleScreen,
    Routes.cookCountyScreen,
    Routes.springfieldScreen,
    Routes.dupageCountyScreen,
    Routes.rockfordPDScreen,
    Routes.grayslakePDScreen,
    Routes.romeopvillePDScreen,
    Routes.hometownPDScreen,
    Routes.willCountyScreen,
    Routes.jolietPDScreen,
  ];

}