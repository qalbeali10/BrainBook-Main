import 'package:get/get.dart';

class SettingsDistanceUnitController extends GetxController{

  var selectedOption = "Miles/Yards".obs;
  RxBool distanceUnits = false.obs;

  onChangedOption(var option) {
    selectedOption.value = option;
  }

  List<String> valueList =[
    "Miles/Yards",
    "Kilometers/Meters",
  ];
}