import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final String text;

  const MyButton({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
        BoxShadow(
          color: color.withAlpha(50),
          blurRadius: 6.0,
          spreadRadius: 0.0,
          offset: const Offset(
            0.0,
            3.0,
          ),
        ),
      ]),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.zero,
            minimumSize: const Size(2, 50)),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
