import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/helpers/sddb_helper.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: SizedBox(
        width: context.width(),
        height: 50,
        child: ListTile(
          leading: IconButton(onPressed: () => GoRouter.of(context).pop(), icon: const Icon(Icons.arrow_back, color: Colors.white)),
          title: Text("Profile", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w400)),
        ),
      ),
    );
  }
}
