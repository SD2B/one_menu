import 'package:flutter/material.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';

class BulletinText extends StatelessWidget {
  final String text;
  const BulletinText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "•",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400, color: ColorCode.colorList(context).labelColor?.withOpacity(.6)),
        ),
        4.width,
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w400, color: ColorCode.colorList(context).labelColor?.withOpacity(.6)),
        ),
      ],
    );
  }
}
