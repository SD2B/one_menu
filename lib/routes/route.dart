import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/custom_scaffold.dart';
import 'package:one_menu/helpers/common_enums.dart';
import 'package:one_menu/helpers/constants.dart';
import 'package:one_menu/helpers/local_storage.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/onboarding.dart';
import 'package:one_menu/view/favorites/favorites.dart';
import 'package:one_menu/view/home/home.dart';
import 'package:one_menu/view/login_screen.dart';
import 'package:one_menu/view/menu/add/add_menu.dart';
import 'package:one_menu/view/menu/view/item_view.dart';
import 'package:one_menu/view/profile/profile.dart';

final GoRouter myRoute = GoRouter(
  initialLocation: "/",
  redirectLimit: 3,
  errorBuilder: (context, state) {
    return Scaffold(body: Center(child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [const Text('Unknown pages'), ElevatedButton(onPressed: () => context.go("/"), child: const Text("Back"))])));
  },
  navigatorKey: ConstantData.navigatorKey,
  routes: _buildRoutes(),
);

final Future<bool?> loginFuture = getLoginData();
List<RouteBase> _buildRoutes() {
  return [
    GoRoute(
      path: '/',
      name: '/',
      parentNavigatorKey: ConstantData.navigatorKey,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation),
            child: child,
          );
        },
        child: FutureBuilder<bool?>(
          future: loginFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Onboarding();
            }
            if (snapshot.hasError || snapshot.data == null || snapshot.data == false) {
              return const CustomScaffold(child: LoginScreen());
            }
            return const CustomScaffold(child: Home());
          },
        ),
      ),
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
      routes: [..._homeRoutes()],
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

List<GoRoute> _homeRoutes() {
  return [
    GoRoute(
      path: RouteEnum.profile.name,
      name: RouteEnum.profile.name,
      pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
        },
        child: CustomScaffold(backgroundColor: ColorCode.colorList(context).primary, child: const Profile()),
      ),
    ),
    GoRoute(
      path: RouteEnum.favourites.name,
      name: RouteEnum.favourites.name,
      pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
        },
        child: const CustomScaffold(enableBack: true, child: Favorites()),
      ),
    ),
    GoRoute(
      path: '${RouteEnum.itemView.name}/:id',
      name: RouteEnum.itemView.name,
      pageBuilder: (BuildContext context, GoRouterState state) {
        final id = int.tryParse(state.pathParameters['id'] ?? '');
        return CustomTransitionPage(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation),
              child: child,
            );
          },
          child: ItemView(id: id ?? 0),
        );
      },
    ),
    GoRoute(
      path: RouteEnum.addMenu.name,
      name: RouteEnum.addMenu.name,
      pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
        },
        child: const CustomScaffold(enableBack: true, child: AddMenu()),
      ),
    ),
  ];
}

Future<bool> getLoginData() async {
  await Future.delayed(const Duration(seconds: 3)); 

  try {
    List<Map<String, dynamic>> loginData = await LocalStorage.get(DBTable.login);
    if (loginData.isEmpty) return false;
    return true;
  } catch (e) {
    qp(e, "getLoginDataError");
    return false;
  }
}
