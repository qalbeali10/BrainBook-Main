//....  VERRIFY CODE API METHODS .... //
import 'dart:developer';

import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/Users_Verification_Model.dart';
import 'package:dio/dio.dart';

class VerificationProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _verificationEndPoint = "api/v1/users/verify-reset-code";
  Future<dynamic> verifyPassword({
    required String data,
  }) async {
    try {
      var responce = await _dio.post(
        _baseUrl + _verificationEndPoint,
        data: {
          "data": data,
        },
        // options: Options(
        //   headers: {'Authorization': 'Bearer $jwt'},
        // ),
      );
      print(responce.data);
      if (responce.statusCode == 200) {
        return VerificationModel.fromJson(responce.data);
      }
    } on DioError catch (e) {
      e.toString();
      log('Verification failed: $e');
      rethrow;
    }
  }
}
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