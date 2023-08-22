import "package:flutter/material.dart";

class RoundedImage extends StatelessWidget {
  const RoundedImage(
      {super.key,
      required this.image,
      this.onTap,
      required this.width,
      required this.height});

  final AssetImage image;
  final VoidCallback? onTap;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.pink[200] as Color,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(50),
          splashColor: Colors.white.withOpacity(0.5),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(image: image, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
