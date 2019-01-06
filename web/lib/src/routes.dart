import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';

class RoutePaths {
  static final home = RoutePath(
    path: '/',
    additionalData: UserListStatus.active,
    useAsDefault: true,
  );
}

class Routes {
  static final List<RouteDefinition> all = [
    RouteDefinition(
      routePath: RoutePaths.home,
      useAsDefault: true,
      //component: home_page.,
    )
  ];
}