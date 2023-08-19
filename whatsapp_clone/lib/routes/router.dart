import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/screens/contact_page.dart';

const homeRoute = '/';
const contactPageRoute = '/allContacts';

class Router {
  static Route<dynamic> generatedRoutes(RouteSettings settings) {
    final routeName = settings.name;
    // ignore: unused_local_variable
    final routeArgs = settings.arguments;

    switch (routeName) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case contactPageRoute:
        return MaterialPageRoute(builder: (_) => const ContactPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No Page Found")),
          ),
        );
    }
  }
}
