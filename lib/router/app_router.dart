
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/dashboard/dashboard_screen.dart';
import '../screens/dashboard/dashboard_details_screen.dart';
import '../screens/analytics/analytics_screen.dart';
import '../screens/analytics/analytics_details_screen.dart';
import '../shell/home_shell.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/dashboard',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return HomeShell(child: child, location: state.uri.toString());
        },
        routes: [
          GoRoute(
            path: '/dashboard',
            builder: (context, state) => const DashboardScreen(),
          ),
          GoRoute(
            path: '/dashboard/details',
            builder: (context, state) => const DashboardDetailsScreen(),
          ),
          GoRoute(
            path: '/analytics',
            builder: (context, state) => const AnalyticsScreen(),
          ),
          GoRoute(
            path: '/analytics/details',
            builder: (context, state) => const AnalyticsDetailsScreen(),
          ),
        ],
      ),
    ],
  );
}
