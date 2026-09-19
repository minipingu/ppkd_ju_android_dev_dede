import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11_tidak_jadi_ada_di_labs/routes/routes.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11_tidak_jadi_ada_di_labs/views/splash_screen.dart';

final GoRouter routerTugas9 = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return SplashScreen11();
      },
      routes: <RouteBase>[
        ...routes11.map(
          (page) => GoRoute(
            path: page.navigation,
            builder: (BuildContext context, GoRouterState state) {
              return page.route;
            },
          ),
        ),
      ],
    ),
  ],
);
