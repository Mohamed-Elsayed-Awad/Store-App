import 'dart:developer';

import 'package:dio/dio.dart';

class Api {
  Dio dio = Dio();

  Future<Response> Get({required String url, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    Response response = await dio.get(
      url,
      options: Options(headers: headers),
    );

    if (response.statusCode == 200) {
      // log(response.data.toString());

      return response;
    } else {
      throw ('There is an error in status code ${response.statusCode}');
    }
  }

  Future<dynamic> Post({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    Response response = await dio.post(
      url,
      data: body,
      options: Options(headers: headers),
    );

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw ('There is an error in status code ${response.statusCode}');
    }
  }

  Future<dynamic> Put({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    headers['Content-Type'] = 'application/json';

    Response response = await dio.put(
      url,
      data: body,
      options: Options(headers: headers),
    );

    if (response.statusCode == 200) {
      log(response.data.toString());
      return response.data;
    } else {
      throw ('There is an error in status code ${response.statusCode}');
    }
  }
}
