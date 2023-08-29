import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_library/state/fav_books.dart';

class FavBookBtn extends ConsumerWidget {
  final String bookId;

  const FavBookBtn({super.key, required this.bookId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favBookIds = ref.watch(favoriteBooksStoreProvider);

    final isFavBook = favBookIds.contains(bookId);

    return ElevatedButton(
      onPressed: () {
        if (isFavBook) {
          ref.read(favoriteBooksStoreProvider.notifier).remove(bookId);
        } else {
          ref.read(favoriteBooksStoreProvider.notifier).add(bookId);
        }
      },
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        ),
      ),
      child: Text(isFavBook ? "Remove From Favorite" : "Add To Favorite"),
    );
  }
}
