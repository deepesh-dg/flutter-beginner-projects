import 'package:open_library/models/book.dart';
import 'package:open_library/services/core/service.dart';
import "package:riverpod_annotation/riverpod_annotation.dart";

part "service.g.dart";

@riverpod
FutureOr<Book> getBookService(GetBookServiceRef ref, String bookId) async {
  final Service service = Service.volume(bookId);

  final responseData = await service.get<Map<String, dynamic>>();

  final book = Book.fromJson(responseData.success.data);

  return book;
}

// @riverpod
// class GetBookService extends _$GetBookService {
//   final Service _service = Service(path: "books/v1/volumes");

//   @override
//   FutureOr<Book> build(String bookId) async {
//     final responseData =
//         await _service.get<Map<String, dynamic>>(path: '/$bookId');

//     final book = Book.fromJson(responseData.success.data);

//     return book;
//   }
// }
