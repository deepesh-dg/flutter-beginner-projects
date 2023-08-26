import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:open_library/models/my_http_response.dart';
import "package:http/http.dart";

class HttpService {
  final String baseUrl;
  final bool https;
  late final Client _httpClient;

  HttpService({required this.baseUrl, this.https = false}) {
    _httpClient = Client();
  }

  Uri getUri(String path, {Map<String, dynamic>? queryParams}) {
    if (https) {
      return Uri.https(baseUrl, path, queryParams);
    }

    return Uri.http(baseUrl, path, queryParams);
  }

  @protected
  Future<MyHttpResponse<TData>> $get<TData>(String path,
      {Map<String, String>? headers, Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _httpClient
          .get(getUri(path, queryParams: queryParams), headers: headers);

      final statusCode = response.statusCode;
      final TData decodedResponse = jsonDecode(response.body);

      return MyHttpResponse(
        success: MySuccess(statusCode: statusCode, data: decodedResponse),
      );
    } catch (e) {
      throw const MyHttpException(
          statusCode: 500, type: "Network Error", message: "Network Error");
    }
  }
}
