import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:one_menu/common_widgets/loading_widget.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/login_model.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.user});

  final UserModel? user;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: context.height() - 300,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3),
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
        ],
      ),
    );
  }
}

