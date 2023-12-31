import 'package:open_library/config/config.dart';
import 'package:open_library/models/http_response.dart';

import './http_service.dart';

class Service extends HttpService {
  final String path;

  Service({
    super.baseUrl = Config.baseApiUrl,
    super.https = true,
    required this.path,
  });

  Future<HttpResponse<T>> get<T>(
      {String? path,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParams}) async {
    try {
      queryParams ??= {};
      queryParams.addEntries({"key": Config.apiKey}.entries);

      final finalPath = path != null ? '${this.path}$path' : this.path;

      return await $get<T>(finalPath,
          headers: headers, queryParams: queryParams);
    } on HttpException {
      rethrow;
    }
  }

  factory Service.volume([String bookId = ""]) {
    return Service(path: "books/v1/volumes/$bookId");
  }
}
