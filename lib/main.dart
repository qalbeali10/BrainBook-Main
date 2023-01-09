import 'package:brainbook/routes/app_pages.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'global_controller/email_password_validator.dart';

class ValidationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ValidatorController());
  }
}

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        // unselectedWidgetColor: ackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: ValidationBinding(),
      initialRoute: Routes.splashScreen,
      getPages: AppPages.pages,
    );
  }
}
