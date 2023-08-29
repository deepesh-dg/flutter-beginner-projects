import 'package:flutter/material.dart';
import 'package:open_library/models/book_details_args.dart';
import 'package:open_library/screens/home/home.dart';
import 'package:open_library/screens/book_details.dart';

class AppRoutes {
  static const String homeRoute = "/";
  static const String bookDetailsRoute = '/book_details';

  static Map<String, Route<Widget> Function(dynamic args)> routes = {
    homeRoute: (_) => MaterialPageRoute(
          builder: (_) => const Home(key: ValueKey(AppRoutes.homeRoute)),
        ),
    bookDetailsRoute: (args) {
      final BookDetailsArgs bookArgs = args as BookDetailsArgs;

      return MaterialPageRoute(
        builder: (_) => BookDetails(
          key: const ValueKey(AppRoutes.bookDetailsRoute),
          bookId: bookArgs.bookId,
        ),
      );
    },
  };

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final routeName = settings.name;
    final routeArgs = settings.arguments;

    if (routes[routeName] != null) {
      return routes[routeName]!(routeArgs);
    }

    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(child: Text("No Page Found")),
      ),
    );
  }
}
