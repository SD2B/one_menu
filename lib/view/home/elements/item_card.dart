import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one_menu/common_widgets/custom_icon_button.dart';
import 'package:one_menu/common_widgets/header_label.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/item_model.dart';
import 'package:one_menu/view/home/elements/item_card_image_section.dart';

class ItemCard extends ConsumerWidget {
  const ItemCard({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemCardImageSection(item: item),
          Container(
            height: 67,
            width: context.width(),
            decoration: BoxDecoration(
              border: Border.all(color: ColorCode.colorList(context).borderColor!),
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 16, top: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      HeaderLabel(
                        header: (item.name ?? "").toTitleCase(),
                        subHeader: "\$${item.price}",
                        headerStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                        subHeaderStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: ColorCode.colorList(context).labelColor,
                            ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: ColorCode.colorList(context).ratingColor?.withOpacity(.12)),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          size: 18,
                          color: ColorCode.colorList(context).ratingColor,
                        ),
                        4.width,
                        Text(
                          "${item.rating}",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontSize: 11,
                                color: ColorCode.colorList(context).ratingColor,
                              ),
                        ),
                      ],
                    ),
                  ),
                  7.width,
                  CustomIconButton(
                    icon: Icons.favorite_border_rounded,
                    buttonSize: 24,
                    iconSize: 16,
                    buttonColor: ColorCode.colorList(context).borderColor,
                    iconColor: Colors.black,
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
