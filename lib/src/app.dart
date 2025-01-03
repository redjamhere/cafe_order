import 'package:cafe_order/src/common/common.dart';
import 'package:flutter/material.dart';

class CoApp extends StatelessWidget {
  const CoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      routerConfig: CoRouter.routes,
    );
  }
}
