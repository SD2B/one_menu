import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:one_menu/common_widgets/header_label.dart';


class InProgress extends StatelessWidget {
  final String? header;
  final String? subHeader;
  const InProgress({super.key, this.header, this.subHeader});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Lottie.asset(
          "assets/lottie/inprogress.json",
          height: 300,
          width: 300,
        ),
        HeaderLabel(
          header: header ?? "In Progress",
          subHeader: subHeader ?? "This page is under construction",
          headFontSize: 20,
          centerAlign: true,
        ),
      ],
    ));
  }
}


