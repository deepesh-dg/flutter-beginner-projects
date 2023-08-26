import 'package:open_library/models/book.dart';

import '../core/service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "service.g.dart";

@riverpod
class SubjectsService extends _$SubjectsService {
  final Service _service = Service(path: "books/v1/volumes");

  @override
  FutureOr<List<Book>> build(String category) async {
    return await _service.get(queryParams: {"q": category});
  }
}
