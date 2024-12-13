import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one_menu/common_widgets/loading_widget.dart';
import 'package:one_menu/view/home/elements/item_card.dart';
import 'package:one_menu/vm/item_list_vm.dart';

import '../../../models/item_model.dart';

class ItemListView extends ConsumerWidget {
  const ItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: ref.watch(itemListVMProvider).when(
              data: (itemList) {
                return ListView.builder(
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      ItemModel item = itemList[index];
                      return ItemCard(item: item);
                    });
              },
              error: (error, stackTrace) => ErrorWidget(error),
              loading: () => const LoadingWidget(),
            ),
      ),
    );
  }
}
