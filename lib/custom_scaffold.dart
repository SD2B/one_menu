import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  const CustomScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: child),
    );
  }
}
