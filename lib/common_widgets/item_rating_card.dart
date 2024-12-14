import 'package:flutter/material.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';

class ItemRatingCard extends StatelessWidget {
  final String rating;
  final bool isItemView;

  const ItemRatingCard({super.key, required this.rating, this.isItemView = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: ColorCode.colorList(context).ratingColor?.withOpacity(.12)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star_rate_rounded,
            size: isItemView ? 20 : 16,
            color: ColorCode.colorList(context).ratingColor,
          ),
          4.width,
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              rating,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: isItemView ? 12 : 11,
                    fontWeight: FontWeight.w500,
                    color: ColorCode.colorList(context).ratingColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
