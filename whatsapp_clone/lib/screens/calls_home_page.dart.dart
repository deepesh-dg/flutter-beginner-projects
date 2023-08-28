import 'package:flutter/material.dart';
import 'package:whatsapp_clone/coolors.dart';

class CallsHomePage extends StatelessWidget {
  const CallsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(child: Text("Calls Home Page")),
        floatingActionButton: FloatingActionButton(
            backgroundColor: greenColor,
            onPressed: () {},
            child: const Icon(Icons.call)));
  }
}
