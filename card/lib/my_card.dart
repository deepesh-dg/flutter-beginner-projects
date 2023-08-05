import 'dart:ui';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(50, 255, 255, 255)),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        color: const Color.fromARGB(30, 255, 255, 255),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1,
              sigmaY: 1,
            ),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: const Image(
                          image: AssetImage("assets/card-thumbnail.jpg")),
                    )),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          )),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
