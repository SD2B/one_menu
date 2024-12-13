import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/common_widgets/custom_icon_button.dart';
import 'package:one_menu/common_widgets/custom_refresh_indicator.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/common_enums.dart';
import 'package:one_menu/helpers/local_storage.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/routes/route.dart';
import 'package:one_menu/view/home/elements/home_profile_section.dart';
import 'package:one_menu/view/home/elements/item_list_view.dart';
import 'package:one_menu/vm/item_list_vm.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator.adaptive(
      onRefresh: () async {
        await ref.read(itemListVMProvider.notifier).getItems(isBuild: false);
        return Future.value();
        // return await Future.delayed(Duration(seconds: 5));
      },
      color: ColorCode.colorList(context).primary,
      backgroundColor: Colors.white,
      strokeWidth: 2.0,
      child: Column(
        children: [
          20.height,
          const HomeProfileSection(),
          8.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Trending Foods", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28)),
                const Spacer(),
                CustomIconButton(
                    icon: Icons.add,
                    onTap: () async {
                      try {
                        int check = await LocalStorage.delete(DBTable.login, where: {"username": "mustak"});
                        if (check == 1) {
                          context.goNamed(RouteEnum.login.name);
                        }
                        qp("$check");
                      } catch (e) {
                        qp(e);
                      }
                    }),
              ],
            ),
          ),
          const ItemListView(),
        ],
      ),
    );
  }
}
