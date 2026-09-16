import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/checkbox_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/tugas7_routes.dart';

final GoRouter routerTugas8 = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const CheckboxInput();
      },
      routes: <RouteBase>[
        ...drawerRoutes.map(
          (page) => GoRoute(
            path: page.navigation,
            builder: (BuildContext context, GoRouterState state) {
              return page.route;
            },
          ),
        ),
        ...bottomNavRoutes.map(
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
