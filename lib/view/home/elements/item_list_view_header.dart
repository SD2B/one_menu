import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/common_widgets/custom_icon_button.dart';
import 'package:one_menu/helpers/common_enums.dart';

class ItemListViewHeader extends StatelessWidget {
  const ItemListViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text("Trending Foods", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28)),
          const Spacer(),
          CustomIconButton(
            icon: Icons.add,
            onTap: () async {
              context.pushNamed(RouteEnum.addMenu.name);
            },
          ),
        ],
      ),
    );
  }
}
