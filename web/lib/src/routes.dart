// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 10/01/2019
import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';
//
import 'package:dart_noipy/src/home/home_page_component.template.dart' as home_page;
import 'package:dart_noipy/src/user_detail/user_details_component.template.dart' deferred as user_details;
//
class RoutePaths {
  static final home = RoutePath(
    path: '/',
    additionalData: UserListType.Home,
    useAsDefault: true,
  );

  static final userDetails = RoutePath(path: 'user/:userId');

}
//
class Routes {
  static final List<RouteDefinition> all = [
    RouteDefinition(
      routePath: RoutePaths.home,
      useAsDefault: true,
      component: home_page.HomePageComponentNgFactory,
    ),
    RouteDefinition.defer(
      routePath: RoutePaths.userDetails,
      loader: () {
        return user_details
            .loadLibrary()
            .then((_) => user_details.UserDetailsComponentNgFactory);
      },
    ),
  ];
}