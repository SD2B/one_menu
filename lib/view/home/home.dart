import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/common_widgets/custom_icon_button.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/common_enums.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/view/home/elements/home_profile_section.dart';
import 'package:one_menu/view/home/elements/item_list_view.dart';
import 'package:one_menu/view/home/elements/item_list_view_header.dart';
import 'package:one_menu/vm/item_list_vm.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator.adaptive(
      onRefresh: () async {
        await ref.read(itemListVMProvider.notifier).getItems(isBuild: false);
        return Future.value();
      },
      color: ColorCode.colorList(context).primary,
      backgroundColor: Colors.white,
      strokeWidth: 2.0,
      child: Column(
        children: [
          20.height,
          const HomeProfileSection(),
          8.height,
          const ItemListViewHeader(),
          const ItemListView(),
        ],
      ),
    );
  }
}

