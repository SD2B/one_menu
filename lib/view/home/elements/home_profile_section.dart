import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/common_widgets/header_label.dart';
import 'package:one_menu/common_widgets/loading_widget.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/common_enums.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/routes/route.dart';
import 'package:one_menu/vm/login_vm.dart';

class HomeProfileSection extends ConsumerWidget {
  const HomeProfileSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage("assets/homeProfile.png"), fit: BoxFit.cover),
      ),
      height: 67,
      width: context.width(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              ref.watch(loginVMProvider).when(
                    data: (loginData) {
                      final user = loginData.user;
                      return Row(
                        children: [
                          HeaderLabel(
                            header: "${user?.firstName} ${user?.lastName}",
                            subHeader: "Kozhikode Kerala",
                            headFontSize: 16,
                            subHeaderFontSize: 12,
                          ),
                          10.width,
                          InkWell(
                            onTap: () => context.goNamed(RouteEnum.profile.name),
                            child: Container(
                                height: 43,
                                width: 43,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: ColorCode.colorList(context).primary!),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: CachedNetworkImage(
                                    imageUrl: user?.profilePic ?? "",
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                    height: double.infinity,
                                    placeholder: (context, url) => const LoadingWidget(height: 40, width: 40),
                                    errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                                  ),
                                )),
                          )
                        ],
                      );
                    },
                    error: (error, stackTrace) => ErrorWidget(error),
                    loading: () => const LoadingWidget(height: 40, width: 40),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
