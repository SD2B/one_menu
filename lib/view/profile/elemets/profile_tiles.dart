import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';

class ProfileTiles extends StatelessWidget {
  final String svg;
  final String value;
  const ProfileTiles({super.key, required this.svg, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: ColorCode.colorList(context).borderColor!))),
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(shape: BoxShape.circle, color: ColorCode.colorList(context).borderColor),
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(svg),
          ),
          10.width,
          Text(
            value,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorCode.colorList(context).customTextColor,
                ),
          ),
        ],
      ),
    );
  }
}
