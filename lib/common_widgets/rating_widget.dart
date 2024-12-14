import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:one_menu/core/colors.dart';

class RatingWidget extends HookWidget {
  final int maxRating;
  final ValueNotifier<int> currentRating;
  final Function(int) onRatingChanged;

  const RatingWidget({super.key, this.maxRating = 5, required this.currentRating, required this.onRatingChanged});

  @override
  Widget build(BuildContext context) {
    void _updateRating(int rating) {
      currentRating.value = rating;
      onRatingChanged(rating);
    }

    String emoji;
    switch (currentRating.value) {
      case 1:
        emoji = '😞';
        break;
      case 2:
        emoji = '😐';
        break;
      case 3:
        emoji = '🙂';
        break;
      case 4:
        emoji = '😀';
        break;
      case 5:
        emoji = '😍';
        break;
      default:
        emoji = '';
    }

    return Container(
      decoration: BoxDecoration(border: Border.all(color: ColorCode.colorList(context).borderColor!), borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Give a star",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(width: 8),
          Row(
            children: List.generate(maxRating, (index) {
              return GestureDetector(
                onTap: () => _updateRating(index + 1),
                child: Icon(
                  Icons.star,
                  color: index < currentRating.value ? Colors.orange : Colors.grey,
                  size: 30.0,
                ),
              );
            }),
          ),
          const SizedBox(width: 8),
          Text(
            emoji,
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
