// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 09/01/2019
import 'dart:async';
//
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';
//import 'package:web/src/routes.dart';
import 'package:dart_noipy/src/routes.dart';
//
@Component(
  selector: 'nav-bar',
  templateUrl: 'nav_bar_component.html',
  styleUrls: ['nav_bar_component.css'],
  directives: [
    routerDirectives,
  ],
  exports: [RoutePaths],
)
class NavBarComponent{
  NavBarComponent(this.messages);
  final Messages messages;

  @Input()
  bool DropdownActive = false;
}