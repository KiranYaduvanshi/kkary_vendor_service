import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:kkary_vendors/API/endpoints.dart';
import 'package:kkary_vendors/utils/app_strings.dart';
import 'package:kkary_vendors/utils/shared_prefrences.dart';
import 'custome_exception.dart';
import 'package:http/http.dart' as http;

class APIManager {
  // String? token = PrefrenceUtil.getString(AppStrings.token, "");
  String token = "882|SaWQuCXtdL8qpWZFM1JvsaeWlA0ru2yijrLMVtL0";

  Future<dynamic> getAllCall({required String url}) async {
    print("Calling API: $url");
    Uri urlForPost = Uri.parse("${Endpoints.baseUrl}$url");
    var responseJson;
    try {
      final response = await http
          .get(urlForPost, headers: {'Authorization': 'Bearer $token'});
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postAllCallNonParam({required String url}) async {
    print("Calling API: $url");
    Uri urlForPost = Uri.parse("${Endpoints.baseUrl}$url");
    var responseJson;
    try {
      final response = await http
          .post(urlForPost, headers: {'Authorization': 'Bearer $token'});
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postAPICall({required String url, required var param}) async {
    print("Calling API: $url");
    print("Calling parameters: $param");

    Uri urlForPost = Uri.parse("${Endpoints.baseUrl}$url");

    print("Calling API: $urlForPost");
    var responseJson;
    try {
      final response = await http.post(urlForPost,
          headers: {
            'Content-type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token'
          },
          body: jsonEncode(param.toJson()));
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } on Error catch (e) {
      print('Error: $e');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    print(response.statusCode);
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }
}
