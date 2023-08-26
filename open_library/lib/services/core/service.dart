import 'package:open_library/config/config.dart';
import 'package:open_library/models/book.dart';
import 'package:open_library/models/my_http_response.dart';

import './http_service.dart';

class Service extends HttpService {
  final String path;

  Service(
      {super.baseUrl = Config.baseApiUrl,
      super.https = true,
      required this.path});

  get(
      {Map<String, String>? headers,
      Map<String, dynamic> queryParams = const {}}) async {
    try {
      queryParams.addEntries({"key": Config.apiKey}.entries);

      final responseData = await $get<Map<String, dynamic>>(path,
          headers: headers, queryParams: queryParams);

      final books = responseData.success.data['items'];

      final List<Book> myBooks = List<Map<String, dynamic>>.from(books)
          .map((e) => Book.fromJson(e))
          .toList();

      return myBooks;
    } on MyHttpException {
      rethrow;
    }
  }
}
