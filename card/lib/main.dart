import 'package:card/my_buttons.dart';
import 'package:flutter/material.dart';
import './colors.dart';
import './my_image.dart';
import './my_card.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: secondaryColor, body: SafeArea(child: Home()))));
}

class Home extends StatelessWidget {
  const Home({super.key});

  Widget topBar() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Trending",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
        ),
        MyImage(
          imgPath: "profile.jpg",
          width: 36,
          height: 36,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: const TextStyle(color: Colors.white),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                child: topBar(),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                child: const MyCard(
                  title: "King Lion",
                  description:
                      "King of beasts: A unique NFT from the collection of fantastic animals",
                ),
              ),
              const MyButtons(),
            ],
          ),
        ));
  }
}
