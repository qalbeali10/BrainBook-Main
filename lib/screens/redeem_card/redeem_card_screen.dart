// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/global_widgets/appbar.dart';
import 'package:brainbook/global_widgets/elevated_button.dart';
import 'package:brainbook/global_widgets/headind_text.dart';
import 'package:brainbook/global_widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'redeem_card_controller.dart';

class RedeemCardScreen extends GetView<RedeemCardController> {
  RedeemCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Redeem Card",
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: controller.globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110.0),
                child: Text(
                  "Redeem a card",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  "Please fill out the information below. Once we verify your card, you will be reimbursed. Please allow up to 6 weeks for processing",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                title: "Card number",
                controller: controller.cardNumController,
                icon: Icon(
                  Icons.credit_card,
                  color: fontColorLight,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                title: "Name",
                controller: controller.nameController,
                icon: Icon(Icons.person_outline, color: fontColorLight),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                title: "Email",
                controller: controller.emailController,
                icon: Icon(Icons.email_outlined, color: fontColorLight),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                title: "Phone number",
                controller: controller.phoneNumController,
                icon: Icon(Icons.phone, color: fontColorLight),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                title: "Where did you recieve the card?",
                controller: controller.recieveLocController,
                icon: Icon(Icons.location_on_outlined, color: fontColorLight),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.black,
              ),
              // SizedBox(
              //   height: 15,
              // ),
              HeadingTextWidget(text: "Payment options"),
              // SizedBox(
              //   height: 15,
              // ),
              ListTile(
                title: Text("Get reimbursed by Paypal"),
                leading: Obx(
                  () => Radio(
                    groupValue: controller.selectedOption.value,
                    value: "Paypal",
                    onChanged: (value) {
                      controller.paypal.value = false;
                      controller.onChangedOption(value);
                    },
                    toggleable: false,
                  ),
                ),
              ),
              Obx(
                () => controller.paypal.value == false
                    ? TextFormFieldWidget(
                        title: "Paypal Email",
                        controller: controller.paypalEmailController,
                        icon: Icon(Icons.email_outlined, color: fontColorLight),
                      )
                    : Container(),
              ),
              ListTile(
                title: Text("Get reimbursed by Check"),
                leading: Obx(
                  () => Radio(
                    groupValue: controller.selectedOption.value,
                    value: "Check",
                    toggleable: false,
                    onChanged: (value) {
                      controller.paypal.value = true;
                      controller.onChangedOption(value);
                    },
                  ),
                ),
              ),
              Obx(
                () => controller.paypal.value == true
                    ? Container(
                        child: Column(
                          children: [
                            TextFormFieldWidget(
                              title: "Address",
                              controller: controller.address1Controller,
                              icon: Icon(Icons.location_on_outlined,
                                  color: fontColorLight),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormFieldWidget(
                              title: "Address2",
                              controller: controller.address2lController,
                              icon: Icon(Icons.location_on_outlined,
                                  color: fontColorLight),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormFieldWidget(
                              title: "City",
                              controller: controller.cityController,
                              icon: Icon(Icons.location_city,
                                  color: fontColorLight),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 180,
                                  child: TextFormFieldWidget(
                                    title: "State",
                                    controller: controller.stateController,
                                    icon: Icon(Icons.flag_outlined,
                                        color: fontColorLight),
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: 180,
                                  child: TextFormFieldWidget(
                                    title: "Zip code",
                                    controller: controller.zipCodeController,
                                    icon: Icon(Icons.keyboard,
                                        color: fontColorLight),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : Container(),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonWidget(title: "REDEEM", onTap: () {}),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
