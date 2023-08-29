import 'package:open_library/models/book.dart';

import '../core/service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "service.g.dart";

@riverpod
class SearchService extends _$SearchService {
  final Service _service = Service(path: "books/v1/volumes");

  @override
  FutureOr<List<Book>> build(String query) async {
    final responseData =
        await _service.get<Map<String, dynamic>>(queryParams: {"q": query});

    final books = responseData.success.data['items'];

    final List<Book> myBooks = List<Map<String, dynamic>>.from(books)
        .map((e) => Book.fromJson(e))
        .toList();

    return myBooks;
  }
}
