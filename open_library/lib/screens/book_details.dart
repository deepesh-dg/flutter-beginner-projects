import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_library/config/my_colors.dart';
import 'package:open_library/services/get/service.dart';

class BookDetails extends ConsumerWidget {
  final String bookId;

  const BookDetails({super.key, required this.bookId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getBook = ref.watch(getBookServiceProvider(bookId));

    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text(
          "Book Details",
        ),
        backgroundColor: MyColors.primary,
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
            child: Text(book.title),
          ),
        ),
        error: (err, stack) =>
            const Center(child: Text("Something Went Wrong...")),
      ),
    );
  }
}
