import "package:flutter/material.dart";

abstract class MyRoutes {
  Route<dynamic> generateRoutes(RouteSettings settings) {
    throw UnimplementedError();
  }
}
