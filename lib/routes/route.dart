import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/common_widgets/no_data_found.dart';
import 'package:one_menu/custom_scaffold.dart';
import 'package:one_menu/helpers/common_enums.dart';
import 'package:one_menu/helpers/constants.dart';
import 'package:one_menu/helpers/local_storage.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/view/home/home.dart';
import 'package:one_menu/view/login_screen.dart';
import 'package:one_menu/view/splash_screen.dart';

final GoRouter myRoute = GoRouter(
  initialLocation: "/",
  redirectLimit: 3,
  errorBuilder: (context, state) {
    return Scaffold(body: Center(child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [const Text('Unknown pages'), ElevatedButton(onPressed: () => context.go("/"), child: const Text("Back"))])));
  },
  navigatorKey: ConstantData.navigatorKey,
  routes: _buildRoutes(),
);

List<RouteBase> _buildRoutes() {
  return [
    GoRoute(
      path: '/',
      name: '/',
      parentNavigatorKey: ConstantData.navigatorKey,
      pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
          },
          child: FutureBuilder(
            future: getLoginData(),
            builder: (context, snapshot) {
              qp(snapshot.data.runtimeType, "================");
              if (snapshot.data == null) {
                return const CustomScaffold(child: SplashScreen());
              } else if (snapshot.data == false) {
                return const CustomScaffold(child: LoginScreen());
              }
              return const CustomScaffold(child: Home());
            },
          )),
      routes: [
        ..._staticRoutes(),
      ],
    ),
  ];
}

List<GoRoute> _staticRoutes() {
  return [
    GoRoute(
      path: RouteEnum.home.name,
      name: RouteEnum.home.name,
      pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
        },
        child: const CustomScaffold(child: Home()),
      ),
    ),
    GoRoute(
      path: RouteEnum.login.name,
      name: RouteEnum.login.name,
      pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
        },
        child: const CustomScaffold(child: LoginScreen()),
      ),
    ),
  ];
}

getLoginData() async {
  try {
    List<Map<String, dynamic>> loginData = await LocalStorage.get(DBTable.login);
    if (loginData.isEmpty) return false;
    return true;
  } catch (e) {
    qp(e, "getLoginDataError");
    return false;
  }
}
