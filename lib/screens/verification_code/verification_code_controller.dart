import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationCodeController extends GetxController {
  VerificationCodeController(
      // {required this.userProvider}
      );
  // late UserProvider userProvider;

  TextEditingController verificationCodeController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

//   verifyCode() async{
// if(globalKey.currentState!.validate()){
//
//   //
//
//   try{
//     final response = await userProvider.verifyCode(code: verificationCodeController.text);
//
//     print(response);
//     print("${response[0]} UserId");
//     print("${response[2]} Code");
//     if(response[1]==true){
//       Get.snackbar("Success", "Code verify");
//       Get.toNamed(Routes.newPasswordScreen,arguments: [response[0],response[2]]);
//       verificationCodeController.clear();
//     }
//     else{
//       Get.snackbar("Error", response);
//     }
//   }
//   catch(e){
//     Get.snackbar("Error",e.toString());
//   }
// }
//
//   }

}
