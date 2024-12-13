import 'package:flutter/material.dart';

class ColorList {
  final Color? primary;
  final Color? secondary;
  final Color? constPrColor;
  final Color? borderColor;
  final Color? menuButtonColor;
  final Color? success;
  final Color? successGreen;
  final Color? ashWhiteLabel;
  final Color? tabBarColor;
  final Color? redWhiteOpacity;
  final Color? redWhite;
  final Color? redOpacityWhite;
  final Color? cardColor;
  final Color? greyWhite;
  final Color? blackWhite;
  final Color? whiteBlack;
  final Color? textFieldHeder;

  ColorList({
    this.successGreen,
    this.primary,
    this.secondary,
    this.constPrColor,
    this.borderColor,
    this.menuButtonColor,
    this.success,
    this.ashWhiteLabel,
    this.tabBarColor,
    this.redWhiteOpacity,
    this.redWhite,
    this.redOpacityWhite,
    this.cardColor,
    this.greyWhite,
    this.blackWhite,
    this.whiteBlack,
    this.textFieldHeder,
  });

  factory ColorList.light() {
    return ColorList(
      borderColor: const Color(0xFFC4283C).withOpacity(.1),
      primary: const Color(0xFFE83D3D),
      secondary: const Color(0xFFE83D3D),
      success: const Color(0xFF007C5A),
      ashWhiteLabel: const Color(0xFF909090),
      tabBarColor: const Color(0xFFFFFFFF),
      redWhiteOpacity: const Color(0xFFC4283C).withOpacity(.1),
      redWhite: const Color(0xFFC4283C),
      redOpacityWhite: const Color(0xFFC4283C).withOpacity(.1),
      cardColor: const Color(0xFFFFFFFF),
      greyWhite: const Color(0xFF808080),
      textFieldHeder: const Color(0xFF242424),
    );
  }

  factory ColorList.dark() {
    return ColorList(
      primary: const Color(0xFFE83D3D),
      secondary: const Color(0xFFE83D3D),
    );
  }
}

class ColorCode {
  static ColorList colorList(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ? ColorList.light() : ColorList.dark();
  }
}
