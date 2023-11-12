import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:students/screens/about_us/about_us_screen.dart';

import 'package:students/screens/dashboard/dashboard_screen.dart';

/// The Routes class contains static constants and a map of named routes to widget builders for
/// navigation in a Flutter app.
class Routes {
  static const dashboardScreen = 'dashboard_screen';
  static const aboutUsScreen = 'about_us_screen';

  static final GoRouter routes =  GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const DashBoardScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: dashboardScreen,
            builder: (BuildContext context, GoRouterState state) {
              return const DashBoardScreen();
            },
          ),
          GoRoute(
            path: aboutUsScreen,
            builder: (BuildContext context, GoRouterState state) {
              return const AboutUsScreen();
            },
          ),
        ],
      ),
    ],
  );

  static defaultRoute() => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Text(
                'Sorry for the unexpected problem !',
              ),
            ),
            SizedBox(height: 19),
          ],
        ),
      );
}
