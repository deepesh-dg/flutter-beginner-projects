import 'package:flutter/material.dart';
import 'package:profile/screens/home.dart';
import 'package:profile/screens/profile.dart';

class Routes {
  static const homeRoute = "/";
  static const profileRoute = "/profile";

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final routeName = settings.name;
    // ignore: unused_local_variable
    final routeArgs = settings.arguments;

    switch (routeName) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const Home());
      case profileRoute:
        return MaterialPageRoute(builder: (_) => const Profile());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No Page Found")),
          ),
        );
    }
  }
}
