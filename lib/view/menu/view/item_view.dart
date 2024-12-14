import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:one_menu/common_widgets/bulletin_text.dart';
import 'package:one_menu/common_widgets/loading_widget.dart';
import 'package:one_menu/common_widgets/title_value.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/item_model.dart';
import 'package:one_menu/models/ui_model.dart';
import 'package:one_menu/view/home/elements/item_card_footer.dart';
import 'package:one_menu/common_widgets/custom_appbar.dart';
import 'package:one_menu/vm/item_list_vm.dart';

class ItemView extends ConsumerWidget {
  final int id;
  const ItemView({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: FutureBuilder<ItemModel>(
          future: ref.watch(itemListVMProvider.notifier).getItem(id),
          builder: (context, snapShot) {
            final item = snapShot.data;
            return Container(
              color: Colors.red,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                        width: context.width(),
                        height: context.height() - (context.height() - 270),
                        decoration: BoxDecoration(color: ColorCode.colorList(context).borderColor),
                        child: CachedNetworkImage(
                          // imageUrl: "https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg",
                          imageUrl: "${item?.image}",
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: double.infinity,
                          placeholder: (context, url) => const LoadingWidget(height: 40, width: 40),
                          errorWidget: (context, url, error) => const Center(child: Icon(Icons.image_not_supported)),
                        )),
                  ),
                  SafeArea(
                    child: SizedBox(
                      height: context.height(),
                      width: context.width(),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: context.width(),
                              height: context.height() - 250,
                              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))),
                              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ItemCardFooter(item: item ?? const ItemModel(), isItemView: true),
                                  20.height,
                                  TitleValue(title: "Description", value: "${item?.description}"),
                                  25.height,
                                  const TitleValue(
                                    title: "Ingredients",
                                    value: "",
                                    child: Column(
                                      children: [
                                        BulletinText(text: "1 large egg"),
                                        BulletinText(text: "½ teaspoon salt"),
                                        BulletinText(text: "½ teaspoon ground black pepper"),
                                        BulletinText(text: "1 pound ground beef"),
                                        BulletinText(text: "½ cup fine dry bread crumbs"),
                                      ],
                                    ),
                                  ),
                                  25.height,
                                  TitleValue(
                                    title: "Extras:",
                                    value: "",
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        15.height,
                                        Row(
                                          children: [
                                            ..._tempUiList.map(
                                              (e) => Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: (_tempUiList.last == e) ? 0 : 12),
                                                  child: Container(
                                                    height: 56,
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: ColorCode.colorList(context).borderColor!)),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        SizedBox(height: 36, width: 36, child: Image.asset(e.subTitle ?? "")),
                                                        2.width,
                                                        Text(
                                                          "${e.title}",
                                                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: ColorCode.colorList(context).customTextColor),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomAppBar(
                            iconColor: ColorCode.colorList(context).customTextColor,
                            iconBackgroundColor: Colors.white.withOpacity(.2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

List<UiModel> _tempUiList = [
  const UiModel(title: "Drinks", subTitle: "assets/drinks.png"),
  const UiModel(title: "Fries", subTitle: "assets/fries.png"),
  const UiModel(title: "Salad", subTitle: "assets/salad.png"),
];
