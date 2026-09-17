import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/checkbox_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/pages/tugas9_page1.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/route/tugas9_routes.dart';

final GoRouter routerTugas9 = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return Tugas9Page1();
      },
      routes: <RouteBase>[
        ...tugas9Routes.map(
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
