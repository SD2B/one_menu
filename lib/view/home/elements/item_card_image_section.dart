import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:one_menu/common_widgets/loading_widget.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/item_model.dart';

class ItemCardImageSection extends StatelessWidget {
  const ItemCardImageSection({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: context.width(),
      decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)), border: Border(left: BorderSide(color: ColorCode.colorList(context).borderColor!), right: BorderSide(color: ColorCode.colorList(context).borderColor!), top: BorderSide(color: ColorCode.colorList(context).borderColor!))),
      child: item.image?.isNotEmpty == true
          ? ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: CachedNetworkImage(
                imageUrl: item.image ?? "",
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
                placeholder: (context, url) => const LoadingWidget(),
                errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
              ),
            )
          : const Center(child: Icon(Icons.image_not_supported, size: 40)),
    );
  }
}
