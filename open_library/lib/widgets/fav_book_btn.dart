import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_library/config/app_colors.dart';
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
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        ),
        backgroundColor: MaterialStatePropertyAll(
          isFavBook ? AppColors.secondary : AppColors.primary,
        ),
        foregroundColor: MaterialStatePropertyAll(
          isFavBook ? AppColors.white : AppColors.darkGrey,
        ),
      ),
      child: Text(isFavBook ? "Remove From Favorite" : "Add To Favorite"),
    );
  }
}
