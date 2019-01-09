// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 09/01/2019
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';
import 'package:redux/redux.dart';
import 'src/app_bar/app_bar_component.dart';

import 'src/routes.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    AppBarComponent,
    routerDirectives,
  ],
  exports: [Routes],
)
class AppComponent implements OnInit, AfterContentInit {
  AppComponent(this._store, this._loader);
  final Store<AppState> _store;
  final ComponentLoader _loader;

  @ViewChild('homeContainer', read: ViewContainerRef)
  ViewContainerRef homeContainer;

  @override
  void ngOnInit() => _store.dispatch(InitAction());

  @override
  void ngAfterContentInit() => document.body.classes.add('loaded');
  
  void toggleNavbarDropdown() async {
    print("toggleNavbarDropdown");
  }
}
