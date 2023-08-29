import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:open_library/config/app_colors.dart';
import 'package:open_library/services/get/service.dart';
import 'package:open_library/widgets/fav_book_btn.dart';
import 'package:open_library/widgets/rating_stars.dart';

class BookDetails extends ConsumerWidget {
  final String bookId;

  const BookDetails({super.key, required this.bookId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getBook = ref.watch(getBookServiceProvider(bookId));

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text(
          "Book Details",
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
      body: getBook.when(
        loading: () => const Center(child: Text("Loading...")),
        data: (book) => SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.darkGrey.withOpacity(0.2), width: 1),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.darkGrey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Image.network(book.thumbnail ?? ""),
                ),
                const SizedBox(height: 20),
                Text(
                  book.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  book.authors?.join(", ") ?? "",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.darkGrey.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 10),
                RatingStars(rating: book.averageRating ?? 0),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Text(
                              "${book.pageCount ?? 0}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Pages",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.darkGrey.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            vertical: BorderSide(
                              color: AppColors.darkGrey.withOpacity(0.2),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "English",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Language",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.darkGrey.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Text(
                              "${book.ratingsCount ?? 0}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Total Ratings",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.darkGrey.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: HtmlWidget(
                    book.description ?? "",
                    textStyle: const TextStyle(
                      color: AppColors.darkGrey,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        error: (err, stack) => const Center(
          child: Text("Something Went Wrong..."),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: const EdgeInsets.only(bottom: 20),
        child: FavBookBtn(bookId: bookId),
      ),
    );
  }
}
