import 'dart:developer';

import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/User_ResetPassword_model.dart';
import 'package:dio/dio.dart';

class ResetUserPasswordProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _resetPasswordEndPoint = "api/v1/users/password-reset";
  Future<dynamic> resetPassword({
    required String email,
  }) async {
    try {
      var responce = await _dio.post(
        _baseUrl + _resetPasswordEndPoint,
        data: {
          "email": email,
        },
        // options: Options(
        //   headers: {'Authorization': 'Bearer $jwt'},
        // ),
      );
      print(responce.data);
      if (responce.statusCode == 200) {
        return ResetPasswordModel.fromJson(responce.data);
      }
    } on DioError catch (e) {
      e.toString();
      log('Password Reset failed: $e');
      rethrow;
    }
  }
}
