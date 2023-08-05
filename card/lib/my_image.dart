import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage(
      {super.key,
      required this.imgPath,
      this.width = double.minPositive,
      this.height = double.minPositive,
      this.borderRadius = 50});

  final String imgPath;
  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image(
            width: width,
            height: height,
            image: AssetImage('assets/$imgPath'),
            fit: BoxFit.fill,
          ),
        ));
  }
}
