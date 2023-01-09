import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddTrespasserDetailsController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  TextEditingController trespassAuth = TextEditingController();
  TextEditingController locationName = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController dateTime = TextEditingController();
  TextEditingController policeDept = TextEditingController();
  TextEditingController trespassName = TextEditingController();
  TextEditingController otherNotes = TextEditingController();

}