import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_library/config/my_theme_data.dart';
import 'package:open_library/routes/my_routes.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Library',
      theme: MyThemeData.getThemeData(),
      onGenerateRoute: (settings) => MyRoutes.generateRoutes(settings),
    );
  }
}
