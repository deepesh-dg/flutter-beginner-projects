import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:open_library/config/app_colors.dart";
import "package:open_library/state/fav_books.dart";
import "package:open_library/widgets/book_card.dart";

class Favorites extends ConsumerWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> bookIds = ref.watch(favoriteBooksStoreProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text(
          "Favorite Books",
        ),
        backgroundColor: AppColors.primary,
        flexibleSpace: Opacity(
          opacity: 0.4,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/appbar-bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: bookIds.map((bookId) => BookCard(bookId: bookId)).toList(),
        ),
      ),
    );
  }
}
