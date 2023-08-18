import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Coloors.dart';

class StatusHomePage extends StatelessWidget {
  const StatusHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(child: Text("Status Home Page")),
        floatingActionButton: FloatingActionButton(
            backgroundColor: greenColor,
            onPressed: () {},
            child: const Icon(Icons.edit)));
  }
}
