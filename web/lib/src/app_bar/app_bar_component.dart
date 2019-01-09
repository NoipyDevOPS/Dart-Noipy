import 'dart:async';

// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';
import 'package:redux/redux.dart';
//import 'package:web/src/routes.dart';
import 'package:dart_noipy/src/routes.dart';
import 'package:dart_noipy/src/app_bar/nav_bar/nav_bar_component.dart';
//
@Component(
  selector: 'app-bar',
  templateUrl: 'app_bar_component.html',
  styleUrls: ['app_bar_component.css'],
  directives: [
    NavBarComponent,
    routerDirectives,
  ],
  exports: [RoutePaths],
)
class AppBarComponent implements OnInit, OnDestroy {
  AppBarComponent(this.messages, this._store, this._router);
  
  final Messages messages;
  final Store<AppState> _store;
  final Router _router;

  String get userName => _store.state.userState.activeUsers[0].firstname;

  StreamSubscription<RouterState> _routeListener;
  Timer _scrollTimer;

  bool hide               = false;
  bool isUserDetailsPage  = false;

  @override
  void ngOnInit() {
    //_listenForRoutes();
    /*_scrollTimer = listenForScrollDirectionChanges((newDirection) {
      if (!isEventDetailsPage) {
        hide = newDirection == ScrollDirection.down;
      }
    });*/
  }

  @override
  void ngOnDestroy() {
    //_theaterButtonClicked.close();
    _routeListener.cancel();
    _scrollTimer.cancel();
  }

  void _listenForRoutes() {
    _routeListener = _router.onRouteActivated.listen((route) {
      final path = route.routePath.path;
      //isUserDetailsPage = path == RoutePaths.userDetails.path ||
      //    path == RoutePaths.showDetails.path;

      hide = isUserDetailsPage;
    });
  }

}