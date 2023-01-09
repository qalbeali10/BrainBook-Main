import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VehicleStopFormController extends GetxController{

  RxBool? agencyJurisdiction = true.obs;
  RxBool? searchinitiated = true.obs;
  RxBool? contrabandDiscovered = true.obs;
  RxBool? driverArrested = true.obs;


  final String emailAdaress = "lorem@gmail.com";


  RxBool violation = false.obs;
  var violationSelectedOption = "Moving".obs;
  onChangedViolationOption(var option){
    violationSelectedOption.value = option;
  }

  List<String> violationList = [
    "Moving",
    "Speeding",
    "Long Violation",
    "Follow to close",
    "CVE",
    "Fail to Signal",
    "Other",
    "Equipment",
    "License",
    "Investigation",
  ];

  RxBool result = false.obs;
  var resultSelectedOption = "Citation".obs;
  onChangedResultOption(var option){
    resultSelectedOption.value = option;
  }

  List<String> resultList = [
    "Citation",
    "Warning",
    "No Action",
    "Other",
  ];

  RxBool driverStatus = false.obs;
  var driverStatusSelectedOption = "White".obs;
  onChangedDriverStatusOption(var option){
    driverStatusSelectedOption.value = option;
  }

  List<String> driverStatusList = [
    "White",
    "Black",
    "Hispanic",
    "American Indian",
    "Asian",
    "Other / Unknown",
  ];


  RxBool driverAge = false.obs;
  var driverAgeSelectedOption = "Under 18".obs;
  onChangedDriverAgeOption(var option){
    driverAgeSelectedOption.value = option;
  }

  List<String> driverAgeList = [
    "Under 18",
    "18-29",
    "30-39",
    "40+",
  ];

  RxBool driverGender = false.obs;
  var driverGenderSelectedOption = "Male".obs;
  onChangedDriverGenderOption(var option){
    driverGenderSelectedOption.value = option;
  }

  List<String> driverGenderList = [
    "Male",
    "female",
  ];

  final _rememberMe = false.obs;
  get rememberMe => _rememberMe.value;
  set rememberMe(value) => _rememberMe.value = value;

  RxBool driverResident = false.obs;
  var driverResidentSelectedOption = "".obs;
  onChangedDriverResidentOption(var option){
    driverResidentSelectedOption.value = option;
  }
  String driverResidentTitle = "Yes";
  // List<String> driverResidentList = [
  //   "Yes",
  // ];



  RxBool locationStop = false.obs;
  var locationStopSelectedOption = "Interstate Highway".obs;
  onChangedLocationStopOption(var option){
    locationStopSelectedOption.value = option;
  }

  List<String> locationStopList = [
    "Interstate Highway",
    "U.S. Highway",
    "State Highway",
    "County ROad",
    "City Street",
    "Other",
  ];

  RxBool probaleCause = false.obs;
  var probaleCauseSelectedOption = "Consent".obs;
  onChangedProbaleCauseOption(var option){
    probaleCauseSelectedOption.value = option;
  }

  List<String> probaleCauseList = [
    "Consent",
    "Reasonable suspicion - Weapon",
    "Incident to Arrest",
    "Drug Dog Alert",
    "Odor of Drugs / Alcoholet",
    "Plain View Contraband",
    "Inventory",
    "Other",
  ];


  RxBool whatWasSearch = false.obs;
  var whatWasSearchSelectedOption = "Driver Only".obs;
  onChangedWhatWasSearchOption(var option){
    whatWasSearchSelectedOption.value = option;
  }

  List<String> whatWasSearchList = [
    "Driver Only",
    "Property Only",
    "Driver and Property",
  ];

  RxBool durationOfSearch = false.obs;
  var durationOfSearchSelectedOption = "0-15 Minutes".obs;
  onChangedDurationOfSearchOption(var option){
    durationOfSearchSelectedOption.value = option;
  }

  List<String> durationOfSearchList = [
    "0-15 Minutes",
    "16-30 Minutes",
    "31+ Minutes",
  ];

  RxBool typeOfContraband = false.obs;
  var typeOfContrabandSelectedOption = "Drug / Alcohol Paraphernalia".obs;
  onChangedTypeOfContrabandOption(var option){
    typeOfContrabandSelectedOption.value = option;
  }

  List<String> typeOfContrabandList = [
    "Drug / Alcohol Paraphernalia",
    "Currency",
    "Weapon",
    "Stolen Property",
    "Other",
  ];

  RxBool arrestAlleged = false.obs;
  var arrestAllegedSelectedOption = "Outstanding Warrant".obs;
  onChangedArrestAllegedOption(var option){
    arrestAllegedSelectedOption.value = option;
  }

  List<String> arrestAllegedList = [
    "Outstanding Warrant",
    "Offense against person",
    "Resisting Arrest",
    "Drug Violation",
    "DUI/DWI/BAC",
    "Property Crime",
    "Traffic Violation",
    "Other",
  ];


  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController officerName = TextEditingController();
  TextEditingController locationOfStop = TextEditingController();
  TextEditingController plateInfo = TextEditingController();
  TextEditingController dateTime = TextEditingController();

}