import 'package:card/colors.dart';
import 'package:card/my_button.dart';
import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(50, 255, 255, 255)),
        child: const Row(
          children: [
            Expanded(
                flex: 3,
                child: MyButton(color: secondaryColor, text: "Purchase")),
            Expanded(
                flex: 3,
                child: MyButton(color: primaryColor, text: "Place a bid")),
          ],
        ));
  }
}
