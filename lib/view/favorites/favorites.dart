import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/view/favorites/elements/favorite_items.dart';

class Favorites extends HookConsumerWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Favorites", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28, fontWeight: FontWeight.w500)),
          20.height,
          const FavoriteItems()
        ],
      ),
    );
  }
}
