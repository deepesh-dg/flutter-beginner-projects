import 'package:flutter/material.dart';
import 'package:open_library/models/book_detials_args.dart';
import 'package:open_library/models/my_routes.dart';
import 'package:open_library/routes/all_routes.dart';
import 'package:open_library/screens/book_details.dart';
import 'package:open_library/screens/search/search.dart';

class SearchRoutes extends MyRoutes {
  @override
  Route<dynamic> generateRoutes(RouteSettings settings) {
    final routeName = settings.name;

    switch (routeName) {
      case AllRoutes.homeRoute:
        return MaterialPageRoute(
          builder: (_) => const Search(key: ValueKey(AllRoutes.homeRoute)),
        );
      case AllRoutes.bookDetailsRoute:
        final routeArgs = settings.arguments as BookDetailsArgs;
        return MaterialPageRoute(
          builder: (_) => BookDetails(
            key: const ValueKey(AllRoutes.bookDetailsRoute),
            bookId: routeArgs.bookId,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No Page Found")),
          ),
        );
    }
  }
}
