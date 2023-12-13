part of '../app_router.dart';

@TypedGoRoute<MainRoute>(path: '/', routes: [
  TypedGoRoute<HomeRoute>(path: 'home'),
  TypedGoRoute<ProjectRoute>(path: 'project')
])
class MainRoute extends GoRouteData {
  MainRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    // TODO: implement build
    return const MainScreen();
  }
}
