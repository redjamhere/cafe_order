import 'package:cafe_order/src/models/models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:cafe_order/src/views/views.dart';

final class CoRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter routes =
      GoRouter(navigatorKey: _rootNavigatorKey, routes: [
    ShellRoute(
        builder: (context, state, child) => ScaffoldWithNavBar(child: child),
        routes: [
          GoRoute(path: '/', builder: (context, state) => HomePage(), routes: [
            GoRoute(
                path: '/:id/sales',
                builder: (context, state) => SalesPage(
                      table: state.extra as TableModel,
                    ))
          ]),
          GoRoute(
            path: '/orders',
            builder: (context, state) => OrdersPage(),
          )
        ])
  ]);
}

class ScaffoldWithNavBar extends StatelessWidget {
  final Widget child;

  const ScaffoldWithNavBar({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter.of(context);

    int currentIndex = 0;
    switch (router.state!.fullPath) {
      case '/':
        currentIndex = 0;
        break;
      case '/orders':
        currentIndex = 1;
        break;
    }

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              router.go('/');
              break;
            case 1:
              router.go('/orders');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.create_rounded),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_rounded),
            label: 'Orders',
          ),
        ],
      ),
    );
  }
}
