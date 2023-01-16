// ignore_for_file: prefer_interpolation_to_compose_strings
import 'package:brainbook/APIS_DATA/APIs_Models/State_Model/State_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class StateGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://13.251.135.112:8080/";
  final _getStateEndpoint = "api/v1/users/app-states?countryId=";
  Future<List<dynamic>> fetchStates(String countryId) async {
    try {
      var responce = await _dio.get(_baseUrl + "$_getStateEndpoint$countryId");
      if (responce.statusCode == 200) {
        print(responce.data);
        List<dynamic> data = (responce.data)
            .map((data) => StateGetModel.fromJson(data))
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
