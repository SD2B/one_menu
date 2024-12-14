import 'package:flutter/material.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';

class TitleValue extends StatelessWidget {
  final String title;
  final String value;
  final Widget? child;
  const TitleValue({super.key, required this.title, required this.value, this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: ColorCode.colorList(context).customTextColor,
              ),
        ),
        5.height,
        child == null
            ? Text(
                value,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorCode.colorList(context).labelColor?.withOpacity(.6),
                    ),
              )
            : child ?? const SizedBox(),
      ],
    );
  }
}
