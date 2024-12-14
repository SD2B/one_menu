import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:one_menu/common_widgets/loading_widget.dart';
import 'package:one_menu/view/profile/elemets/profile_app_bar.dart';
import 'package:one_menu/view/profile/elemets/profile_background.dart';
import 'package:one_menu/view/profile/elemets/profile_body.dart';
import 'package:one_menu/view/profile/elemets/profile_image.dart';
import 'package:one_menu/vm/login_vm.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(loginVMProvider).when(
          data: (loginData) {
            final user = loginData.user;
            return Stack(
              children: [
                ...ProfileBackground.background(context),
                ProfileBody(user: user),
                ProfileImage(user: user),
                const ProfileAppBar(),
              ],
            );
          },
          error: (error, stackTrace) => ErrorWidget(error),
          loading: () => const LoadingWidget(),
        );
  }
}
