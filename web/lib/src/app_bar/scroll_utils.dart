import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';
import 'package:redux/redux.dart';
import 'package:web/src/routes.dart';


@Component(
  selector: 'app-bar',
  templateUrl: 'app_bar_component.html',
  styleUrls: ['app_bar_component.css'],
  directives: [
    //NavBarComponent,
    routerDirectives,
  ],
  exports: [RoutePaths],
)
class AppBarComponent {

}