import 'package:flutter/material.dart';
import 'package:open_library/config/app_colors.dart';

class RatingStars extends StatelessWidget {
  final num rating;

  const RatingStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= rating; i++)
          Icon(
            Icons.star,
            color: Colors.amber[600] as Color,
          ),
        for (int i = 1; i <= 5 - rating.floor(); i++)
          Icon(
            Icons.star,
            color: AppColors.darkGrey.withOpacity(0.2),
          ),
      ],
    );
  }
}
