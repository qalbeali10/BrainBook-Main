// ignore_for_file: prefer_const_constructors

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/routes/app_routes.dart';
import 'package:brainbook/screens/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends GetView<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Settings",
      ),
      backgroundColor:  backgroundColor,
      body: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.location_on,
              color: Colors.black,
            ),
            title: InkWell(
                onTap: ()=> Get.toNamed(Routes.settingsLocationScreen),
                child: Text(
                  "Location",
                )),
            trailing: Text(
                "CA",style: TextStyle(color:Colors.black54, fontSize: 14),
               ),
          ),
          ListTile(
            leading: const Icon(
              Icons.add_road,
              color: Colors.black,
            ),
            title: InkWell(
                onTap: ()=> Get.toNamed(Routes.settingsDistanceUnitScreen),
                child: Text(
                 "Distance units",
                )),
            trailing:
             Text("Kilometers/Meters",
                  style: TextStyle(color:Colors.black54, fontSize: 14)),
            ),

          ListTile(
            leading: const Icon(
              Icons.fastfood,
              color: Colors.black,
            ),
            title: Text(
              "Use cookies",
            ),
            trailing: Obx(
                  () => Switch(
                  onChanged: (value) {
                    controller.selectCookies.value = value;
                  },
                  value: controller.selectCookies.value,
                  // activeTrackColor: Colors.grey,
                  activeColor: fontColorDark
              ),

            ),
          ),
        ],
      ),
    );
  }
}
