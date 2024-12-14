import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/core/colors.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final bool? enableBack;
  final Function? onBackCalled;
  const CustomScaffold({super.key, required this.child, this.backgroundColor, this.enableBack, this.onBackCalled});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: enableBack == true
          ? AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                    onBackCalled?.call();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: ColorCode.colorList(context).customTextColor,
                  )),
            )
          : null,
      body: SafeArea(child: child),
    );
  }
}
