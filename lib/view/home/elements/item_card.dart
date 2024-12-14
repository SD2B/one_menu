import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:one_menu/common_widgets/custom_icon_button.dart';
import 'package:one_menu/common_widgets/header_label.dart';
import 'package:one_menu/common_widgets/item_rating_card.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/item_model.dart';
import 'package:one_menu/view/home/elements/item_card_footer.dart';
import 'package:one_menu/view/home/elements/item_card_image_section.dart';

class ItemCard extends HookConsumerWidget {
  final ItemModel item;
  const ItemCard({super.key, required this.item});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemCardImageSection(item: item),
          ItemCardFooter(item: item),
        ],
      ),
    );
  }
}

