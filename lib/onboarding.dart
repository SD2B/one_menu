import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset("assets/oneMenu.svg"),
      ),
    );
  }
}
