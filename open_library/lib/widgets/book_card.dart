import 'package:flutter/material.dart';
import 'package:open_library/config/my_colors.dart';
import 'package:open_library/models/book.dart';

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: MyColors.darkGrey.withOpacity(0.1), width: 1),
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
                  color: MyColors.secondary.withOpacity(0.85),
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
