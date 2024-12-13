import 'package:flutter/material.dart';

class ColorList {
  final Color? primary;
  final Color? secondary;
  final Color? labelColor;
  final Color? success;
  final Color? borderColor;
  final Color? ratingColor;

  ColorList({this.primary, this.secondary, this.labelColor, this.success, this.borderColor, this.ratingColor});

  factory ColorList.light() {
    return ColorList(
      primary: const Color(0xFFE83D3D),
      secondary: const Color(0xFFE83D3D),
      labelColor: const Color(0xFF6C7584),
      borderColor: const Color(0xFFE5E8EC),
      success: const Color(0xFF007C5A),
      ratingColor: const Color(0xFFF0A500),
    );
  }

  factory ColorList.dark() {
    return ColorList(
      primary: const Color(0xFFE83D3D),
      secondary: const Color(0xFFE83D3D),
      labelColor: const Color(0xFF6C7584),
      borderColor: const Color(0xFFE5E8EC),
      success: const Color(0xFF007C5A),
      ratingColor: const Color(0xFFF0A500),
    );
  }
}

class ColorCode {
  static ColorList colorList(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ? ColorList.light() : ColorList.dark();
  }
}
