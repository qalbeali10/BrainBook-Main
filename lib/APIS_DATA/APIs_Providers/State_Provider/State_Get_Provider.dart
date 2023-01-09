// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:brainbook/APIS_DATA/APIs_Models/State_Model/State_Get_Model.dart';
import 'package:dio/dio.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class StateGetProvider {
  final _dio = Dio();
  final _baseUrl = "http://3.12.213.89:8080/";
  final _getStateEndpoint = "api/v1/admin/state?countryId=";
  Future<List<dynamic>> fetchState(String countryId) async {
    print(countryId);
    try {
      var statesResponce =
          await _dio.get(_baseUrl + "$_getStateEndpoint$countryId");
      if (statesResponce.statusCode == 200) {
        print(statesResponce.data);
        List<dynamic> data = (statesResponce.data)
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
