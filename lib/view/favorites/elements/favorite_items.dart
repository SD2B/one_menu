import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:one_menu/common_widgets/custom_text_field.dart';
import 'package:one_menu/common_widgets/item_rating_card.dart';
import 'package:one_menu/common_widgets/loading_widget.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/common_enums.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/vm/item_list_vm.dart';

import '../../../models/item_model.dart';

class FavoriteItems extends HookConsumerWidget {
  const FavoriteItems({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final searchQuery = useState<String>("");

    useEffect(() {
      searchController.addListener(() {
        searchQuery.value = searchController.text.toLowerCase();
      });
      return () => searchController.removeListener(() {});
    }, [searchController]);

    return SizedBox(
      width: context.width(),
      height: context.height() - 180,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextField(
            height: 48,
            boarderRadius: 120,
            controller: searchController,
            hintText: "Search here...",
            suffix: Icon(CupertinoIcons.search, color: ColorCode.colorList(context).borderColor),
          ),
          Expanded(
            child: ref.watch(itemListVMProvider).when(
                  data: (itemList) {
                    // Filter the items based on the search query
                    final filteredList = itemList.where((item) {
                      final itemName = item.name?.toLowerCase() ?? "";
                      return itemName.contains(searchQuery.value);
                    }).toList();

                    if (filteredList.isEmpty) {
                      return Center(
                        child: Text(
                          "No items match your search.",
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: ColorCode.colorList(context).labelColor),
                        ),
                      );
                    }

                    return ListView.builder(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        ItemModel item = filteredList[index];
                        return ListTile(
                          onTap: () => context.pushNamed(RouteEnum.itemView.name, pathParameters: {"id": "${item.id}"}),
                          contentPadding: const EdgeInsets.only(bottom: 20, top: 20, left: 3),
                          shape: Border(bottom: BorderSide(color: ColorCode.colorList(context).borderColor!.withOpacity(.3))),
                          leading: Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: ColorCode.colorList(context).borderColor),
                            child: item.imageUrl?.isEmpty == true || item.imageUrl == null
                                ? const Center(child: Icon(Icons.image_not_supported))
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: CachedNetworkImage(
                                      imageUrl: item.imageUrl ?? "",
                                      fit: BoxFit.fill,
                                      width: double.infinity,
                                      height: double.infinity,
                                      placeholder: (context, url) => const LoadingWidget(height: 40, width: 40),
                                      errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                                    ),
                                  ),
                          ),
                          title: Text(
                            ("${item.name}").toTitleCase(),
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("KFC", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 12, fontWeight: FontWeight.w400, color: ColorCode.colorList(context).labelColor)),
                              ItemRatingCard(rating: "${item.rating} (50+)"),
                            ],
                          ),
                          trailing: Icon(CupertinoIcons.forward, color: ColorCode.colorList(context).customTextColor, size: 20),
                        );
                      },
                    );
                  },
                  error: (error, stackTrace) => ErrorWidget(error),
                  loading: () => const LoadingWidget(),
                ),
          ),
        ],
      ),
    );
  }
}
