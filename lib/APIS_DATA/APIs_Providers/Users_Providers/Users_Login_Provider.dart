import 'dart:developer';
import 'package:brainbook/APIS_DATA/APIs_Models/Users_Models/Users_Login_Model.dart';
import 'package:dio/dio.dart';

class UsersLoginProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _loginEndPoint = "api/v1/users/login";
  // final getStorage = GetStorage();
  // String jwt = getStorage.read('jwt');
  Future<dynamic> userLogin({
    required String email,
    required String password,
  }) async {
    try {
      var responce = await _dio.post(
        _baseUrl + _loginEndPoint,
        data: {
          "email": email,
          "password": password,
        },
        // options: Options(
        //   headers: {'Authorization': 'Bearer $jwt'},
        // ),
      );
      print(responce.data);
      if (responce.statusCode == 200) {
        return UsersLoginModel.fromJson(responce.data);
      }
    } on DioError catch (e) {
      e.toString();
      log('Login failed:$e');
      rethrow;
    }
  }
}


 //....  LOGIN API METHODS.....  //

  // Future<dynamic> loginUser(
  //     {required String email, required String password}) async {
  //   final response = await http.post(Uri.parse("$endPoint$loginPath"),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: jsonEncode({
  //         "email": email,
  //         "password": password,
  //       }));

  //   // print(email);
  //   // print(password);
  //   if (response.statusCode == 200) {
  //     Get.toNamed(Routes.dashBoardScreen);
  //   }

  //   final decodedJson = jsonDecode(response.body);

  //   if (decodedJson["success"] == true) {
  //     return [
  //       decodedJson["data"]["token"],
  //       decodedJson["success"],
  //       decodedJson["msg"]
  //     ];
  //   } else
  //     (e) {
  //       [decodedJson["msg"] as String, response.statusCode];
  //     };
  // }
