// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_function_literals_in_foreach_calls, must_call_super, unused_field

import 'package:brainbook/APIS_DATA/APIs_Providers/Country_Providers/Country_Get_Providers.dart';
import 'package:brainbook/APIS_DATA/APIs_Providers/State_Provider/State_Get_Provider.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/states.dart';

class HomeController extends GetxController {
  //.....Instances.....//
  final CountryGetProvider _countryGetProvider = CountryGetProvider();
  final StateGetProvider _stateGetProvider = StateGetProvider();

  //.....Variables Initializations & Text Editing Controillers.....//
  final String countryId;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  HomeController(this.countryId);

  //.....On init Function for GETX(controller).....//
  @override
  Future<void> onInit() async {
    //......... Called Countries Screen data in variables on Init function ......//
    countryResultList = await _countryGetProvider.fetchCountry();
    // statesResultList = await _stateGetProvider.fetchState(countryId);

    //.....Get Builder method.....//
    update();
    countryResultList.forEach((element) {
      Countries.add(element.countryName.toString());
    });
    //  statesResultList.forEach((element) {
    //   States.add(element.state.toString());
    // });
    // super.onInit();
  }

//.....Dynamic List for getting APIS DATA.....//
  List<dynamic> countryResultList = [].obs;
  // List<dynamic> statesResultList = [].obs;

  var val = "".obs;

  List<String> Countries = [];
  List<String> States = [
    "California",
    "Illinois",
    "New York",
    "Las Vegas",
    "LASD",
    "LASD",
    "LASD",
  ];
  List<String> Cities = [
    "hangu",
    "Peshawar",
    "Islamabad",
    "Lahore",
  ];
  List<String> Counties = [
    "California",
    "Illinois",
    "New York",
    "LASD",
    "hangu",
    "Peshawar",
    "Islamabad",
    "Lahore",
  ];
  // final currentIndex = 0.obs;
  //
  // Widget get currentPage => pages[currentIndex.value];

  List<Widget> pages = [
    StateMainHomePage(),
    IllinoisHomePage(),
    NewYorkHomePage(),
    LASDHomePage(),
  ];

  List<MainHomePage> mainHomePage = [
    MainHomePage(
      image: "assets/mainhomepage/1.png",
      text: "Warrants",
    ),
    MainHomePage(
      image: "assets/mainhomepage/2.png",
      text: "Federal Codes",
    ),
    MainHomePage(
      image: "assets/mainhomepage/3.png",
      text: "Less Lethal",
    ),
    MainHomePage(
      image: "assets/mainhomepage/4.png",
      text: "Drugs Related",
    ),
    MainHomePage(
      image: "assets/mainhomepage/5.png",
      text: "Translator",
    ),
    MainHomePage(
      image: "assets/mainhomepage/6.png",
      text: "Dead Chechlist",
    ),
    MainHomePage(
      image: "assets/mainhomepage/7.png",
      text: "Age Calculator",
    ),
    MainHomePage(
      image: "assets/mainhomepage/8.png",
      text: "Gang Slang",
    ),
    MainHomePage(
      image: "assets/mainhomepage/9.png",
      text: "Trafic Investigation",
    ),
    MainHomePage(
      image: "assets/mainhomepage/10.png",
      text: "Testifying Tips",
    ),
    MainHomePage(
      image: "assets/mainhomepage/11.png",
      text: "Window Tint laws",
    ),
    MainHomePage(
      image: "assets/mainhomepage/12.png",
      text: "SFST’s",
    ),
    MainHomePage(
      image: "assets/mainhomepage/13.png",
      text: "Case Law",
    ),
    MainHomePage(
      image: "assets/mainhomepage/14.png",
      text: "Gladys R./Marsy`s",
    ),
    MainHomePage(
      image: "assets/mainhomepage/15.png",
      text: "Miranda",
    ),
    MainHomePage(
      image: "assets/mainhomepage/16.png",
      text: "Keys to Castle",
    ),
    MainHomePage(
      image: "assets/mainhomepage/17.png",
      text: "Exigent Circs",
    ),
    MainHomePage(
      image: "assets/mainhomepage/18.png",
      text: "Placards",
    ),
    MainHomePage(
      image: "assets/mainhomepage/19.png",
      text: "Vechicle Stop Form",
    ),
    MainHomePage(
      image: "assets/mainhomepage/20.png",
      text: "VIN Decoder",
    ),
    MainHomePage(
      image: "assets/mainhomepage/21.png",
      text: "K-9 Report",
    ),
    MainHomePage(
      image: "assets/mainhomepage/22.png",
      text: "Trespasser APB",
    ),
    MainHomePage(
      image: "assets/mainhomepage/23.png",
      text: "Front Plates",
    ),
    MainHomePage(
      image: "assets/mainhomepage/24.png",
      text: "Amber Alerts",
    ),
    MainHomePage(
      image: "assets/mainhomepage/25.png",
      text: "Recruits/Studing",
    ),
    MainHomePage(
      image: "assets/mainhomepage/26.png",
      text: "FBI Most Wanted",
    ),
    MainHomePage(
      image: "assets/mainhomepage/27.png",
      text: "Subscripition Survey",
    ),
    MainHomePage(
      image: "assets/mainhomepage/28.png",
      text: "Retirement Tools",
    ),
    MainHomePage(
      image: "assets/mainhomepage/29.png",
      text: "1st Amd `Provokers`",
    ),
  ];

  List<String> mainPageRoutes = [
    Routes.warrantsScreen,
    Routes.federalCodeScreen,
    Routes.lessLethalScreen,
    Routes.drugsRelatedScreen,
    Routes.translatorScreen,
    Routes.deadCheckListScreen,
    Routes.ageCalculationScreen,
    Routes.gangSlangScreen,
    Routes.traficInvestigationScreen,
    Routes.testifyingTipsScreen,
    Routes.windowTintLawsScreen,
    Routes.standardizedFST,
    Routes.caseLawScreen,
    Routes.gladysMarsyScreen,
    Routes.mirandaScreen,
    Routes.keysToCastleScreen,
    Routes.exigentCircumstancesScreen,
    " Container(color: Colors.red,),",
    Routes.vehicleStopFormScreen,
    " Container(color: Colors.red,),",
    " Container(color: Colors.red,),",
    Routes.trespasserAPBScreen,
    Routes.frontPlatesScreen,
    " Container(color: Colors.red,),",
    Routes.recruitsStudyingScreen,
    " Container(color: Colors.red,),",
    Routes.subscriptionSurveyScreen,
    Routes.retirementToolsScreen,
    Routes.firstAmdProvokers,
  ];

  List<IllinoisPage> illinoisPage = [
    IllinoisPage(
      image: "assets/illinoishomepage/2.png",
      text: "ISP Districts",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/3.png",
      text: "Common Codes",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/4.png",
      text: "Less Lethal",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/5.png",
      text: "Drugs Related",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/6.png",
      text: "Translator",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/7.png",
      text: "Common Traffic",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/8.png",
      text: "Age Calculator",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/9.png",
      text: "Gang Slang",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/10.png",
      text: "Trafic Investigation",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/11.png",
      text: "Testifying Tips",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/12.png",
      text: "Window Tint laws",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/13.png",
      text: "SFST’s",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/14.png",
      text: "Case Law",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/15.png",
      text: "Gladys R./Marsy`s",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/16.png",
      text: "Miranda",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/17.png",
      text: "Keys to Castle",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/18.png",
      text: "Exigent Circs",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/19.png",
      text: "Weapons",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/20.png",
      text: "Vechicle Stop Form",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/21.png",
      text: "Domestic Violence",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/22.png",
      text: "Theft",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/23.png",
      text: "Trespasser APB",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/24.png",
      text: "Crime Elements",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/25.png",
      text: "Amber Alerts",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/26.png",
      text: "School Related",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/27.png",
      text: "FBI Most Wanted",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/28.png",
      text: "UCR Codes",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/29.png",
      text: "Retirement Tools",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/30.png",
      text: "VIN Codes",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/31.png",
      text: "AOIC Codes",
    ),
    IllinoisPage(
      image: "assets/illinoishomepage/32.png",
      text: "Federal Codes",
    ),
  ];

  List<String> illinoisPageRoutes = [
    Routes.iSPDistrictsScreen,
    Routes.commonCodesScreen,
    Routes.lessLethalScreen,
    Routes.drugsRelatedScreen,
    Routes.translatorScreen,
    "Routes.deadCheckListScreen,",
    Routes.ageCalculationScreen,
    Routes.gangSlangScreen,
    Routes.traficInvestigationScreen,
    Routes.testifyingTipsScreen,
    Routes.windowTintLawsScreen,
    Routes.standardizedFST,
    Routes.caseLawScreen,
    Routes.gladysMarsyScreen,
    Routes.mirandaScreen,
    Routes.keysToCastleScreen,
    Routes.exigentCircumstancesScreen,
    Routes.weaponsScreen,
    Routes.vehicleStopFormScreen,
    Routes.domesticViolenceScreen,
    " Container(color: Colors.red,),",
    Routes.trespasserAPBScreen,
    "Routes.frontPlatesScreen,",
    " Container(color: Colors.red,),",
    "Routes.recruitsStudyingScreen,",
    "Routes.recruitsStudyingScreen,",
    "Routes.recruitsStudyingScreen,",
    Routes.retirementToolsScreen,
    " Routes.subscriptionSurveyScreen,",
    " Routes.retirementToolsScreen,",
    Routes.federalCodeScreen,
  ];

  List<NewYorkPage> newYorkPage = [
    NewYorkPage(
      image: "assets/newyorkhomepage/2.png",
      text: "Warrants",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/3.png",
      text: "Federal Codes",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/4.png",
      text: "Less Lethal",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/5.png",
      text: "Drugs Related",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/6.png",
      text: "Translator",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/7.png",
      text: "NYC Summons",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/8.png",
      text: "Age Calculator",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/9.png",
      text: "Gang Slang",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/10.png",
      text: "Trafic Investigation",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/11.png",
      text: "Testifying Tips",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/12.png",
      text: "Window Tint laws",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/13.png",
      text: "SFST’s",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/14.png",
      text: "Case Law",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/15.png",
      text: "Gladys R./Marsy`s",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/16.png",
      text: "Miranda",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/17.png",
      text: "Keys to Castle",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/18.png",
      text: "Exigent Circs",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/19.png",
      text: "NYC Transit",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/20.png",
      text: "Vechicle Stop Form",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/21.png",
      text: "Common VTL",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/22.png",
      text: "Read Full Laws",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/23.png",
      text: "Trespasser APB",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/24.png",
      text: "Front Plates",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/25.png",
      text: "Amber Alerts",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/26.png",
      text: "Testimonies",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/27.png",
      text: "FBI Most Wanted",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/28.png",
      text: "Subscripition Survey",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/29.png",
      text: "Retirement Tools",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/30.png",
      text: "Other Codes",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/31.png",
      text: "NY State Police",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/32.png",
      text: "NYCRR",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/33.png",
      text: "NY Agencies",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/34.png",
      text: "TBTA Bridges & Tunnels",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/35.png",
      text: "NY Sheriff’s",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/36.png",
      text: "Precincts Map",
    ),
    NewYorkPage(
      image: "assets/newyorkhomepage/37.png",
      text: "Mile Markers",
    ),
  ];

  List<String> newYorkPageRoutes = [
    Routes.warrantsScreen,
    Routes.federalCodeScreen,
    Routes.lessLethalScreen,
    Routes.drugsRelatedScreen,
    Routes.translatorScreen,
    Routes.nYCSummonsScreen,
    Routes.ageCalculationScreen,
    Routes.gangSlangScreen,
    Routes.traficInvestigationScreen,
    Routes.testifyingTipsScreen,
    Routes.windowTintLawsScreen,
    Routes.standardizedFST,
    Routes.caseLawScreen,
    Routes.gladysMarsyScreen,
    Routes.mirandaScreen,
    Routes.keysToCastleScreen,
    Routes.exigentCircumstancesScreen,
    Routes.nYCTransitScreen,
    Routes.vehicleStopFormScreen,
    Routes.commonVTLScreen,
    Routes.readFullLawsScreen,
    Routes.trespasserAPBScreen,
    Routes.frontPlatesScreen,
    " Container(color: Colors.red,),",
    Routes.testimoniesScreen,
    " Container(color: Colors.red,),",
    Routes.subscriptionSurveyScreen,
    Routes.retirementToolsScreen,
    Routes.otherCodesScreen,
    Routes.nYStatePoliceScreen,
    "  Routes.nYStatePoliceScreen,",
    Routes.nYAgenciesScreen,
    "  Routes.nYStatePoliceScreen,",
    Routes.nYSherrifScreen,
    "  Routes.nYStatePoliceScreen,",
    Routes.mileMarkersScreen,
  ];

  List<LASDPage> lASDPage = [
    LASDPage(
      image: "assets/lasdhomepage/1.png",
      text: "Field ID",
    ),
    LASDPage(
      image: "assets/lasdhomepage/2.png",
      text: "SHAD-49",
    ),
    LASDPage(
      image: "assets/lasdhomepage/3.png",
      text: "Stations",
    ),
    LASDPage(
      image: "assets/lasdhomepage/4.png",
      text: "Miranda",
    ),
    LASDPage(
      image: "assets/lasdhomepage/5.png",
      text: "MDC - CAD",
    ),
    LASDPage(
      image: "assets/lasdhomepage/6.png",
      text: "Court #’s",
    ),
    LASDPage(
      image: "assets/lasdhomepage/7.png",
      text: "Drugs Related",
    ),
    LASDPage(
      image: "assets/lasdhomepage/8.png",
      text: "Department #’s",
    ),
    LASDPage(
      image: "assets/lasdhomepage/9.png",
      text: "Common CVC Codes",
    ),
    LASDPage(
      image: "assets/lasdhomepage/10.png",
      text: "Custody #’s",
    ),
    LASDPage(
      image: "assets/lasdhomepage/11.png",
      text: "Other Common Codes",
    ),
    LASDPage(
      image: "assets/lasdhomepage/12.png",
      text: "County Codes",
    ),
    LASDPage(
      image: "assets/lasdhomepage/13.png",
      text: "Broadcasts",
    ),
    LASDPage(
      image: "assets/lasdhomepage/14.png",
      text: "Stat Codes",
    ),
    LASDPage(
      image: "assets/lasdhomepage/15.png",
      text: "Vehicle Theft",
    ),
    LASDPage(
      image: "assets/lasdhomepage/16.png",
      text: "Radio Codes",
    ),
    LASDPage(
      image: "assets/lasdhomepage/17.png",
      text: "Policy",
    ),
    LASDPage(
      image: "assets/lasdhomepage/18.png",
      text: "Phonetics",
    ),
    LASDPage(
      image: "assets/lasdhomepage/19.png",
      text: "Court Codes",
    ),
    LASDPage(
      image: "assets/lasdhomepage/20.png",
      text: "CHP-180 Narratives",
    ),
    LASDPage(
      image: "assets/lasdhomepage/21.png",
      text: "Crime Elements",
    ),
    LASDPage(
      image: "assets/lasdhomepage/22.png",
      text: "Dead Checklist",
    ),
    LASDPage(
      image: "assets/lasdhomepage/23.png",
      text: "RD’s",
    ),
    LASDPage(
      image: "assets/lasdhomepage/24.png",
      text: "SACR",
    ),
    LASDPage(
      image: "assets/lasdhomepage/25.png",
      text: "Warrants",
    ),
    LASDPage(
      image: "assets/lasdhomepage/26.png",
      text: "Domestic Violence",
    ),
    LASDPage(
      image: "assets/lasdhomepage/27.png",
      text: "Exigent Circs",
    ),
    LASDPage(
      image: "assets/lasdhomepage/28.png",
      text: "Gladys R./Marsy’s",
    ),
    LASDPage(
      image: "assets/lasdhomepage/29.png",
      text: "4 keys to Castle",
    ),
    LASDPage(
      image: "assets/lasdhomepage/30.png",
      text: "Ball Schedule",
    ),
    LASDPage(
      image: "assets/lasdhomepage/31.png",
      text: "Case Law",
    ),
    LASDPage(
      image: "assets/lasdhomepage/32.png",
      text: "EPO",
    ),
    LASDPage(
      image: "assets/lasdhomepage/33.png",
      text: "CHP Officers",
    ),
    LASDPage(
      image: "assets/lasdhomepage/34.png",
      text: "Case Assignment",
    ),
    LASDPage(
      image: "assets/lasdhomepage/35.png",
      text: "Pursuits",
    ),
    LASDPage(
      image: "assets/lasdhomepage/36.png",
      text: "Missing Critical",
    ),
    LASDPage(
      image: "assets/lasdhomepage/37.png",
      text: "SFST’s",
    ),
    LASDPage(
      image: "assets/lasdhomepage/38.png",
      text: "Testifying Tips",
    ),
    LASDPage(
      image: "assets/lasdhomepage/39.png",
      text: "Sample Reports",
    ),
    LASDPage(
      image: "assets/lasdhomepage/40.png",
      text: "WIC Codes",
    ),
    LASDPage(
      image: "assets/lasdhomepage/40.png",
      text: "Read Full Codes",
    ),
    LASDPage(
      image: "assets/lasdhomepage/42.png",
      text: "City Abbreviations",
    ),
    LASDPage(
      image: "assets/lasdhomepage/43.png",
      text: "Stat Code Book",
    ),
    LASDPage(
      image: "assets/lasdhomepage/44.png",
      text: "Translators",
    ),
    LASDPage(
      image: "assets/lasdhomepage/45.png",
      text: "Traffic Investigations",
    ),
    LASDPage(
      image: "assets/lasdhomepage/46.png",
      text: "Custody Info",
    ),
    LASDPage(
      image: "assets/lasdhomepage/47.png",
      text: "Age Calculator",
    ),
    LASDPage(
      image: "assets/lasdhomepage/48.png",
      text: "Less Lethal",
    ),
    LASDPage(
      image: "assets/lasdhomepage/49.png",
      text: "APX 8000",
    ),
    LASDPage(
      image: "assets/lasdhomepage/50.png",
      text: "Gang Slang",
    ),
    LASDPage(
      image: "assets/lasdhomepage/51.png",
      text: "Force Options",
    ),
    LASDPage(
      image: "assets/lasdhomepage/52.png",
      text: "Federal Codes",
    ),
    LASDPage(
      image: "assets/lasdhomepage/53.png",
      text: "Placards",
    ),
    LASDPage(
      image: "assets/lasdhomepage/54.png",
      text: "Weapons",
    ),
    LASDPage(
      image: "assets/lasdhomepage/55.png",
      text: "Tressoasser APB",
    ),
    LASDPage(
      image: "assets/lasdhomepage/56.png",
      text: "Windows Tint Laws",
    ),
    LASDPage(
      image: "assets/lasdhomepage/57.png",
      text: "FBI Most Wanted",
    ),
    LASDPage(
      image: "assets/lasdhomepage/58.png",
      text: "Tow Authority",
    ),
    LASDPage(
      image: "assets/lasdhomepage/59.png",
      text: "Front Plates",
    ),
    LASDPage(
      image: "assets/lasdhomepage/60.png",
      text: "Amber Alerts",
    ),
    LASDPage(
      image: "assets/lasdhomepage/61.png",
      text: "Retirement Tools",
    ),
    LASDPage(
      image: "assets/lasdhomepage/62.png",
      text: "MISD Exceptions",
    ),
    LASDPage(
      image: "assets/lasdhomepage/63.png",
      text: "Field OPS",
    ),
    LASDPage(
      image: "assets/lasdhomepage/64.png",
      text: "Crowd Disbursement",
    ),
    LASDPage(
      image: "assets/lasdhomepage/65.png",
      text: "Order the Book",
    ),
    LASDPage(
      image: "assets/lasdhomepage/66.png",
      text: "Brady Bill",
    ),
  ];

  List<String> lASDPageRoutes = [
    " Routes.sHAD49Screen,",
    Routes.sHAD49Screen,
    Routes.stationsScreen,
    Routes.mirandaScreen,
    Routes.mDCScreen,
    Routes.courtNoScreen,
    Routes.drugsRelatedScreen,
    " Routes.gangSlangScreen,",
    " Routes.gangSlangScreen,",
    Routes.custodyScreen,
    Routes.otherCommonCodesScreen,
    "Routes.windowTintLawsScreen,",
    Routes.broadcastsScreen,
    Routes.statCodesScreen,
    "Routes.windowTintLawsScreen,",
    "Routes.windowTintLawsScreen,",
    "Routes.windowTintLawsScreen,",
    Routes.phoneticsScreen,
    "Routes.windowTintLawsScreen,",
    Routes.cHPScreen,
    "Routes.windowTintLawsScreen,",
    Routes.deadCheckListScreen,
    "Routes.windowTintLawsScreen,",
    Routes.sACRScreen,
    Routes.warrantsScreen,
    Routes.domesticViolenceScreen,
    Routes.exigentCircumstancesScreen,
    Routes.gladysMarsyScreen,
    " Container(color: Colors.red,),",
    " Container(color: Colors.red,),",
    Routes.caseLawScreen,
    " Container(color: Colors.red,),",
    Routes.cHPOfficersScreen,
    " Routes.otherCodesScreen,",
    Routes.pursuitsScreen,
    " Routes.otherCodesScreen,",
    Routes.standardizedFST,
    Routes.testifyingTipsScreen,
    Routes.sampleReportsScreen,
    Routes.wICCodesScreen,
    "  Routes.nYStatePoliceScreen,",
    "  Routes.nYStatePoliceScreen,",
    "  Routes.nYStatePoliceScreen,",
    Routes.translatorScreen,
    Routes.traficInvestigationScreen,
    Routes.custodyInfoScreen,
    Routes.ageCalculationScreen,
    Routes.lessLethalScreen,
    "  Routes.nYStatePoliceScreen,",
    Routes.gangSlangScreen,
    "  Routes.nYStatePoliceScreen,",
    Routes.federalCodeScreen,
    "  Routes.nYStatePoliceScreen,",
    Routes.weaponsScreen,
    Routes.trespasserAPBScreen,
    Routes.windowTintLawsScreen,
    " Routes.fbi,",
    " Routes.fbi,",
    Routes.frontPlatesScreen,
    " Routes.fbi,",
    Routes.retirementToolsScreen,
    Routes.mISDExceptionsScreen,
    Routes.fieldOPSScreen,
    Routes.crowDisbursementScreen,
    " Routes.fbi,",
    Routes.bradyBillScreen,
  ];
}

class MainHomePage {
  void Function()? onTap;
  final String image;
  final String text;

  MainHomePage({required this.image, required this.text, this.onTap});
}

class IllinoisPage {
  void Function()? onTap;
  final String image;
  final String text;

  IllinoisPage({required this.image, required this.text, this.onTap});
}

class NewYorkPage {
  void Function()? onTap;
  final String image;
  final String text;

  NewYorkPage({required this.image, required this.text, this.onTap});
}

class LASDPage {
  void Function()? onTap;
  final String image;
  final String text;

  LASDPage({required this.image, required this.text, this.onTap});
}
