// ignore_for_file: curly_braces_in_flow_control_structures, prefer_interpolation_to_compose_strings, unused_field
import 'dart:developer';

import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/Users_%20SignUp_Model.dart';
import 'package:dio/dio.dart';

class UsersSignUpProviders {
  final _dio = Dio();
  final String _baseUrl = "http://13.251.135.112:8080/";
  final String _registerEndPoint = "api/v1/users/register";

  // //.....  SIGN UP API METHODS...  //
  Future<dynamic> registerUser(
      {required String email,
      required String password,
      required String country}) async {
    try {
      final responce = await _dio.post(_baseUrl + _registerEndPoint,
          data: {"email": email, "password": password, "country": country});
      print(responce.data);
      if (responce.statusCode == 201) {
        return UsersSignUpModel.fromJson(responce.data);
      }
    } on DioError catch (e) {
      e.toString();
      log(" User did not registered successfully: $e");
      rethrow;
    }
  }

  // //....  PASSWORD RESET API METHODS.....  //

  // Future<dynamic> passwordReset({required String email}) async {
  //   print("callll");

  //   final response = await http.post(Uri.parse("$endPoint$passwordResetPath"),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: jsonEncode({
  //         "email": email,
  //       }));
  //   print(response.body);
  //   final decodedJson = jsonDecode(response.body);
  //   print("$decodedJson ddddddddddddddd");
  //   Get.snackbar("Success", decodedJson["msg"]);

  //   if (decodedJson["success"] == true) {
  //     return [decodedJson["msg"], decodedJson["success"]];
  //   } else {
  //     decodedJson["msg"];
  //   }
  // }

  //....  VERRIFY CODE API METHODS .... //

  // Future<dynamic> verifyCode({required String code}) async {
  //   final response = await http.post(Uri.parse("$endPoint$verifyCodePath"),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: jsonEncode({
  //         "code": code,
  //       }));
  //   print(response.body);
  //   final decodedJson = jsonDecode(response.body);
  //   //  print(decodedJson["data"]["code"]);
  //   if (decodedJson["success"] == true) {
  //     return [
  //       decodedJson["userId"],
  //       decodedJson["success"],
  //       decodedJson["data"]["code"]
  //     ];
  //   } else {
  //     return decodedJson["msg"];
  //   }
  // }

  //.....  NEW PASSWORD API METHODS  //

  // Future<dynamic> newPassword(
  //     {required String userId,
  //     required String code,
  //     required String password,
  //     required String confirmPassword}) async {
  //   final response = await http.post(
  //     Uri.parse("$endPoint$newPasswordPath"),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode({
  //       "userId": userId,
  //       "code": code,
  //       "password": password,
  //       "confirmPassword": confirmPassword,
  //     }),
  //   );
  //   print("${response.body} response body");
  //   final decodedJson = jsonDecode(response.body);
  //   print(decodedJson);
  //   if (decodedJson["success"] == true) {
  //     print(decodedJson);
  //     return [decodedJson["msg"], decodedJson["success"]];
  //   } else {
  //     return decodedJson["msg"];
  //   }
  // }

  // Future<dynamic> profile({required String token}) async {
  //   final response = await http.get(
  //     Uri.parse("$endPoint$profilePath"),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'Authorization': 'Bearer ' + token,
  //     },
  //   );
  //   final decodedJson = jsonDecode(response.body);
  //   // print(decodedJson);
  //   if (decodedJson["success"] == true) {
  //     return decodedJson;
  //   }
  // }
}
