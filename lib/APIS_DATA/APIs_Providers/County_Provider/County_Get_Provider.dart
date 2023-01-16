import 'package:brainbook/APIS_DATA/APIs_Models/County_Model/County_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class CountyGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _getCountyEndpoint = "api/v1/users/app-county?stateId=";
  Future<List<dynamic>> fetchCounty(String stateId) async {
    print(stateId);
    try {
      var responce = await _dio.get("$_baseUrl$_getCountyEndpoint$stateId");
      if (responce.statusCode == 200) {
        print(responce.data);
        List<dynamic> data = (responce.data)
            .map((data) => CountyGetModel.fromJson(data))
            .toList();
        return data;
      }
    } on DioError catch (e) {
      e.toString();
      SnackPosition.BOTTOM;
      rethrow;
    }
    return [];
  }
}
