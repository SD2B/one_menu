import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:one_menu/common_widgets/custom_icon_button.dart';
import 'package:one_menu/common_widgets/header_label.dart';
import 'package:one_menu/common_widgets/item_rating_card.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/item_model.dart';

class ItemCardFooter extends HookConsumerWidget {
  final ItemModel item;
  final bool isItemView;
  const ItemCardFooter({super.key, required this.item, this.isItemView = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFav = useState(false);
    return Container(
      height: isItemView ? 92 : 67,
      width: context.width(),
      decoration: BoxDecoration(
        border: isItemView ? Border(bottom: BorderSide(color: ColorCode.colorList(context).borderColor!)) : Border.all(color: ColorCode.colorList(context).borderColor!),
        borderRadius: isItemView ? null : const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16, top: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: isItemView ? CrossAxisAlignment.start : CrossAxisAlignment.center,
              children: [
                HeaderLabel(
                  header: (item.name ?? "").toTitleCase(),
                  subHeader: "\$${item.price}",
                  headerStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: isItemView ? 20 : 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                  subHeaderStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: isItemView ? 14 : 11,
                        fontWeight: isItemView ? FontWeight.w700 : FontWeight.w500,
                        color: ColorCode.colorList(context).labelColor,
                      ),
                )
              ],
            ),
            const Spacer(),
            ItemRatingCard(rating: "${item.rating}", isItemView: isItemView),
            7.width,
            CustomIconButton(
              icon: isFav.value ? Icons.favorite : Icons.favorite_border_rounded,
              buttonSize: isItemView ? 28 : 24,
              iconSize: isItemView ? 18 : 16,
              buttonColor: isFav.value ? ColorCode.colorList(context).primary : ColorCode.colorList(context).borderColor,
              iconColor: isFav.value ? Colors.white : Colors.black,
              onTap: () {
                isFav.value = !isFav.value;
              },
            )
          ],
        ),
      ),
    );
  }
}
