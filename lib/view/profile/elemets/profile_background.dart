import 'package:flutter/material.dart';
import 'package:one_menu/core/colors.dart';

class ProfileBackground {
static  List<Widget> background(BuildContext context) {
    return [
      Positioned(top: 80, left: 0, right: 0, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 250, height: 250, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: ColorCode.colorList(context).borderColor!.withOpacity(.2), width: 2)))])),
      Positioned(top: 40, left: 0, right: 0, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 350, height: 350, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: ColorCode.colorList(context).borderColor!.withOpacity(.2), width: 2)))])),
      Positioned(top: 0, left: -50, right: -50, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 450, height: 450, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: ColorCode.colorList(context).borderColor!.withOpacity(.2), width: 2)))])),
      Positioned(top: -50, left: -100, right: -100, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 550, height: 550, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: ColorCode.colorList(context).borderColor!.withOpacity(.2), width: 2)))])),
    ];
  }
}
