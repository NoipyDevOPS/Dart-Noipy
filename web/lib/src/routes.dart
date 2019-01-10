// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 10/01/2019
import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';
//
import 'package:dart_noipy/src/home/home_page_component.template.dart' as home_page;
//
class RoutePaths {
  static final home = RoutePath(
    path: '/',
    additionalData: UserListStatus.active,
    useAsDefault: true,
  );
}
//
class Routes {
  static final List<RouteDefinition> all = [
    RouteDefinition(
      routePath: RoutePaths.home,
      useAsDefault: true,
      component: home_page.HomePageComponentNgFactory,
    )
  ];
}