import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/custom_scaffold.dart';
import 'package:one_menu/helpers/common_enums.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/login_model.dart';
import 'package:one_menu/view/profile/elemets/profile_tiles.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key, required this.user});

  final UserModel? user;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: context.width(),
        height: context.height() - 225,
        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))),
        child: Column(
          children: [
            85.height,
            Text(
              "${user?.firstName} ${user?.lastName}",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            30.height,
            InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () => context.pushNamed(RouteEnum.favourites.name),
              child: Container(
                width: context.width(),
                height: 56,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: ColorCode.colorList(context).borderColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.only(left: 20, right: 18),
                child: Row(
                  children: [
                    Text(
                      "My Favorites",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: ColorCode.colorList(context).customTextColor),
                    ),
                    const Spacer(),
                    Text(
                      "15",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18, fontWeight: FontWeight.w700, color: ColorCode.colorList(context).customTextColor),
                    ),
                    9.width,
                    Icon(CupertinoIcons.forward, color: ColorCode.colorList(context).customTextColor, size: 20)
                  ],
                ),
              ),
            ),
            37.height,
            const ProfileTiles(svg: 'assets/phone.svg', value: "+156 906785"),
            const ProfileTiles(svg: 'assets/phone.svg', value: "1930 Pooh Bear Lane, AUBURN"),
            ProfileTiles(svg: 'assets/phone.svg', value: "${user?.email}"),
          ],
        ),
      ),
    );
 
 
  }
}
