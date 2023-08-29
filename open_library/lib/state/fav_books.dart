import "package:riverpod_annotation/riverpod_annotation.dart";

part 'fav_books.g.dart';

@riverpod
class FavoriteBooksStore extends _$FavoriteBooksStore {
  @override
  build() {
    return <String>[];
  }

  add(String bookId) {
    if (state.contains(bookId)) return;

    state = [...state, bookId];
  }

  remove(String bookId) {
    if (state.contains(bookId)) {
      state = state.where((bId) => bId != bookId);
    }
  }
}
