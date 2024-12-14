import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/helpers/sddb_helper.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final bool? disableBack;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  const CustomAppBar({super.key, this.title, this.disableBack, this.iconColor, this.iconBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: SizedBox(
        width: context.width(),
        height: 50,
        child: ListTile(
          leading: disableBack == true
              ? null
              : IconButton(
                  style: iconBackgroundColor == null ? null : ButtonStyle(backgroundColor: WidgetStateProperty.all(iconBackgroundColor)),
                  onPressed: () => GoRouter.of(context).pop(),
                  icon: Icon(Icons.arrow_back, color: iconColor ?? Colors.white),
                ),
          title: title == null || title?.isEmpty == true ? null : Text("Profile", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}
