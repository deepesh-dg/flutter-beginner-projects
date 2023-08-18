import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Coloors.dart';
import 'package:whatsapp_clone/routes/router.dart';

class ChatHomePage extends StatelessWidget {
  const ChatHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(child: Text("Chat Home Page")),
        floatingActionButton: FloatingActionButton(
            backgroundColor: greenColor,
            onPressed: () {
              Navigator.pushNamed(context, contactPageRoute);
            },
            child: const Icon(Icons.chat)));
  }
}
