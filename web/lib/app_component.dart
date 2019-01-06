import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';
import 'package:redux/redux.dart';
import 'package:web/src/app_bar/app_bar_component.dart';

import 'src/routes.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  directives: [
    //AppBarComponent,
    routerDirectives,
  ],
  exports: [Routes],
)
class AppComponent {
  AppComponent();

  var name = 'Angular';
}
/*
class AppComponent implements OnInit, AfterContentInit {
  AppComponent();

  var name = 'Angular';

  @override
  void ngOnInit() => _store.dispatch(InitAction());

  @override
  void ngAfterContentInit() => document.body.classes.add('loaded');

  void toggleTheaterDropdown() async {
    if (!theaterDropdownActive) {
      _theaterController = await TheaterDropdownController.loadAndShow(
        _loader,
        theaterContainer,
        background: '#152451',
      );
    } else {
      _theaterController.hideAndDestroy();
    }
  }
}
*/