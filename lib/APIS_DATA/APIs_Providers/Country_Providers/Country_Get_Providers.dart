import 'package:brainbook/APIS_DATA/APIs_Models/Country_Models/Country_Get_Models.dart';
import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';

class CountryGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _countryGetEndPoint = "api/v1/users/app-countries";
  Future<List<dynamic>> fetchCountry() async {
    try {
      var responce = await _dio.get(_baseUrl + _countryGetEndPoint);
      if (responce.statusCode == 200) {
        print(responce.data);
        List<dynamic> data = (responce.data)
            .map((data) => CountryGetModel.fromJson(data))
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
