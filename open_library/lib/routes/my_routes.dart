import 'package:flutter/material.dart';
import 'package:open_library/screens/home.dart';

class MyRoutes {
  static const homeRoute = "/";
  static const profileRoute = "/profile";

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final routeName = settings.name;
    // ignore: unused_local_variable
    final routeArgs = settings.arguments;

    switch (routeName) {
      case homeRoute:
        return MaterialPageRoute(
            builder: (_) => const Home(key: ValueKey(homeRoute)));
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No Page Found")),
          ),
        );
    }
  }
}
