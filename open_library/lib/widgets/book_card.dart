import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_library/config/app_colors.dart';
import 'package:open_library/models/book.dart';
import 'package:open_library/models/book_details_args.dart';
import 'package:open_library/routes/app_routes.dart';
import 'package:open_library/services/get/service.dart';

class BookCard extends ConsumerWidget {
  final Book? book;
  final String? bookId;

  const BookCard({super.key, this.book, this.bookId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (book != null) {
      return Card(book: book!);
    }

    if (bookId != null) {
      final getBook = ref.watch(getBookServiceProvider(bookId!));

      return getBook.when(
        loading: () => const Center(child: Text("Loading...")),
        data: (book) => Card(book: book),
        error: (err, stack) =>
            const Center(child: Text("Something sWent Wrong...")),
      );
    }

    throw UnimplementedError();
  }
}

class Card extends StatelessWidget {
  final Book book;

  const Card({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.bookDetailsRoute,
          arguments: BookDetailsArgs(bookId: book.id),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.darkGrey.withOpacity(0.1), width: 1),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.elliptical(8, 8)),
                  color: AppColors.secondary.withOpacity(0.85),
                ),
                child: Image.network(book.thumbnail ?? ""),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 4,
              child: Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          book.categories != null && book.categories!.isNotEmpty
                              ? book.categories![0]
                              : "",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Flexible(
                        child: Text(
                          book.title,
                          style: Theme.of(context).listTileTheme.titleTextStyle,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Flexible(
                        child: Text(
                          book.authors != null && book.authors!.isNotEmpty
                              ? book.authors![0]
                              : "",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  )),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
