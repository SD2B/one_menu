import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  final double? height;
  final double? width;
  const LoadingWidget({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset('assets/one_menu_loading.json', height: height ?? 50, width: width ?? 50, fit: BoxFit.fill),
        ],
      ),
    );
  }
}
