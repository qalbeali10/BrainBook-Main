import 'dart:developer';

import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/user_NewPassword_Model.dart';
import 'package:dio/dio.dart';

class NewPasswordProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _newPasswordEndPoint = "api/v1/users/new-password";
  // final getStorage = GetStorage();
  // String jwt = getStorage.read('jwt');
  Future<dynamic> newPassword({
    required String password,
    required String confirmPassword,
  }) async {
    try {
      var responce = await _dio.post(
        _baseUrl + _newPasswordEndPoint,
        data: {
          "password": password,
          "confirmPassword": confirmPassword,
        },
        // options: Options(
        //   headers: {'Authorization': 'Bearer $jwt'},
        // ),
      );
      print(responce.data);
      if (responce.statusCode == 200) {
        return NewPasswordModel.fromJson(responce.data);
      }
    } on DioError catch (e) {
      e.toString();
      log('Login failed:$e');
      rethrow;
    }
  }
}
