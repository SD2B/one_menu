import 'package:flutter/material.dart';

class AddMenuSectionBuilder extends StatelessWidget {
  final List<Widget> children;
  const AddMenuSectionBuilder({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
      child: Column(
        children: children,
      ),
    );
  }
}
