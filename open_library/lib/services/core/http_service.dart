import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:open_library/models/http_response.dart';
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
  Future<HttpResponse<TData>> $get<TData>(String path,
      {Map<String, String>? headers, Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _httpClient
          .get(getUri(path, queryParams: queryParams), headers: headers);

      final statusCode = response.statusCode;
      final TData decodedResponse = jsonDecode(response.body);

      return HttpResponse(
        success: Success(statusCode: statusCode, data: decodedResponse),
      );
    } catch (e) {
      throw const HttpException(
          statusCode: 500, type: "Network Error", message: "Network Error");
    }
  }
}
