import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/features/home/home_screen.dart';
import 'package:flutter_portfolio_web/features/main/presentation/view/main_screen.dart';
import 'package:flutter_portfolio_web/features/project/project_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_router.g.dart';
part './home/home_route.dart';
part './main/main_route.dart';
part './project/project_route.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  final router = GoRouter(initialLocation: '/', routes: $appRoutes);
  return router;
}
