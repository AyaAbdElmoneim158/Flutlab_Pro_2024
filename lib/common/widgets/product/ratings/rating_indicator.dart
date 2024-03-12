import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 4.5,
      itemSize: 20,
      itemBuilder: (context, index) => const Icon(
        Iconsax.star,
        color: TColors.primary,
      ),
    );
  }
}
