import 'package:flutter/material.dart';
import './screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Todo',
    initialRoute: "home",
    routes: {
      'home': (context) => const Home(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
