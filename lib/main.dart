import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one_menu/core/theme.dart';
import 'package:one_menu/routes/route.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'One Menu',
      theme: MyTheme.getThemeData(ThemeMode.light),
      themeMode: ThemeMode.light,
      // themeMode:
      //     ref.watch(mainVM).isLightTheme ? ThemeMode.light : ThemeMode.dark,
      darkTheme: MyTheme.getThemeData(ThemeMode.dark),
      routerConfig: myRoute,
    );
  }
}
