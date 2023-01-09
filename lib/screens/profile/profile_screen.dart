// ignore_for_file: prefer_const_constructors
import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:brainbook/screens/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);
  // UserProvider userProvider = UserProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Profile",
        txtBtnTitle: "Save",
        onTap: () {
          print("aaaaaaaaaaaa11111111");
          //print(Get.arguments);
          // controller.Profile();
          // final response =await userProvider.profile(token: Get.arguments[0]);
          // print(response["data"]["user"]["email"]);
          //controller.Profile;
        },
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeadingTextWidget(text: "Basic Information"),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Name",
                controller: controller.nameController,
                icon: Icon(Icons.person_outline),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                title: "Email",
                controller: controller.emailController,
                icon: Icon(Icons.email_outlined),
              ),
              SizedBox(
                height: 15,
              ),
              // Container(
              //   height: 60,
              //   // width: 170,
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 18.0),
              //     child: DropdownButtonFormField(
              //       isExpanded: true,
              //       //key: controller.globalKey,
              //       hint: Text("Select state"),
              //       onChanged: (String? value) {
              //         controller.val.value=value!;
              //       },
              //       items: controller.Cities.map((city) {
              //         return DropdownMenuItem(
              //           value: city,
              //           child: Text(city),
              //         );
              //       }).toList(),
              //       decoration: InputDecoration(
              //         fillColor: Colors.white,
              //         filled: true,
              //         enabled: false,
              //         enabledBorder: InputBorder.none,
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide.none,
              //           borderRadius: BorderRadius.circular(12),),),
              //     ),
              //   ),
              // ),
              TextFormFieldWidget(
                title: "State",
                controller: controller.stateController,
                icon: Icon(Icons.flag_outlined),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.black,
              ),
              HeadingTextWidget(text: "Password"),
              SizedBox(
                height: 15,
              ),
              Obx(
                () => TextFormFieldWidget(
                  title: "Password ",
                  icon: const Icon(
                    Icons.lock_outlined,
                    color: fontColorDark,
                  ),
                  controller: controller.passwordController,
                  obscureText: controller.obscurepassword,
                  inkWell: GestureDetector(
                    onTap: () {
                      controller.obscurepassword = !controller.obscurepassword;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(controller.obscurepassword ? "Show" : "Hide",
                          style: TextStyle(color: fontColorLight)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Obx(
                () => TextFormFieldWidget(
                  title: "New Password ",
                  icon: const Icon(
                    Icons.lock_outlined,
                    color: fontColorDark,
                  ),
                  controller: controller.newPasController,
                  obscureText: controller.obscureNewPas,
                  inkWell: GestureDetector(
                    onTap: () {
                      controller.obscureNewPas = !controller.obscureNewPas;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(controller.obscureNewPas ? "Show" : "Hide",
                          style: TextStyle(color: fontColorLight)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Obx(
                () => TextFormFieldWidget(
                  title: "Confrim new password ",
                  icon: const Icon(
                    Icons.lock_outlined,
                    color: fontColorDark,
                  ),
                  controller: controller.confirmNewPasController,
                  obscureText: controller.obscureConfrimPas,
                  inkWell: GestureDetector(
                    onTap: () {
                      controller.obscureConfrimPas =
                          !controller.obscureConfrimPas;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                          controller.obscureConfrimPas ? "Show" : "Hide",
                          style: TextStyle(color: fontColorLight)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
