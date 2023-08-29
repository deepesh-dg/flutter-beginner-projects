import "package:flutter/material.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_library/models/nav_items.dart';
import 'package:open_library/services/search/service.dart';
import 'package:open_library/widgets/book_card.dart';

class HomeTabContent extends ConsumerWidget {
  final NavItem navItem;

  const HomeTabContent({super.key, required this.navItem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getBooks = ref.watch(searchServiceProvider(navItem.slug));

    return getBooks.when(
      loading: () => const Center(child: Text("Loading...")),
      data: (books) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: books.map((book) => BookCard(book: book)).toList(),
        ),
      ),
      error: (err, stack) =>
          const Center(child: Text("Something Went Wrong...")),
    );
  }
}
