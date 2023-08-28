import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:open_library/config/my_colors.dart";

class Search extends ConsumerStatefulWidget {
  const Search({super.key});

  @override
  ConsumerState<Search> createState() => _Search();
}

class _Search extends ConsumerState<Search>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        title: const Text(
          "Menu",
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
      body: const Center(
        child: Text("Search"),
      ),
    );
  }
}
