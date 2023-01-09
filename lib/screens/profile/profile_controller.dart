// ignore_for_file: unnecessary_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  ProfileController(
      // {required this.userProvider}
      );
  // UserProvider userProvider;

  var val = "".obs;

  List<String> Cities = [
    "California",
    "Illinois",
    "New York",
    "LASD",
  ];

  final _obscurepassword = true.obs;
  get obscurepassword => _obscurepassword.value;
  set obscurepassword(value) => _obscurepassword.value = value;

  final _obscureNewPas = true.obs;
  get obscureNewPas => _obscureNewPas.value;
  set obscureNewPas(value) => _obscureNewPas.value = value;

  final _obscureConfrimPas = true.obs;
  get obscureConfrimPas => _obscureConfrimPas.value;
  set obscureConfrimPas(value) => _obscureConfrimPas.value = value;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasController = TextEditingController();
  TextEditingController confirmNewPasController = TextEditingController();

  // Profile()async{

  //   final response =await userProvider.profile(token: Get.arguments);
  //   emailController.text = response["data"]["user"]["email"];
  //   stateController.text = response["data"]["user"]["state"];
  //   print(response);
  // }

  @override
  void onInit() {
    // Profile();
    super.onInit();
  }
}
