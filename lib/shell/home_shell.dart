
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeShell extends StatelessWidget {
  final Widget child;
  final String location;

  const HomeShell({super.key, required this.child, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: location.startsWith('/analytics') ? 1 : 0,
        onDestinationSelected: (index) {
          if (index == 0) {
            context.go('/dashboard');
          } else {
            context.go('/analytics');
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: 'الرئيسية',
          ),
          NavigationDestination(
            icon: Icon(Icons.analytics_outlined),
            selectedIcon: Icon(Icons.analytics),
            label: 'الاحصائيات',
          ),
        ],
      ),
    );
  }
}
