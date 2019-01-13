// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 13/01/2019
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';
import 'package:redux/redux.dart';
//
import 'package:dart_noipy/src/user_detail/user_details_component.dart';
import 'package:dart_noipy/src/common/loading_view/loading_view_component.dart';
import 'package:dart_noipy/src/routes.dart';
//
import '../restore_scroll_position.dart';
//
@Component(
  selector: 'home-page',
  styleUrls: ['home_page_component.css'],
  templateUrl: 'home_page_component.html',
  directives: [
    LoadingViewComponent,
    UserDetailsComponent,
    NgFor,
  ],
)
class HomePageComponent implements OnActivate {
  HomePageComponent(this._store, this._router, this.messages);
  final Store<AppState> _store;
  final Router          _router;
  final Messages        messages;
  //
  UserListType _listType;
  //
  HomePageViewModel get viewModel =>
      HomePageViewModel.fromStore(_store, UserListType.Home);
  //
  @override
  void onActivate(RouterState previous, RouterState current) {
    var _additionalData = current.routePath.additionalData;

    restoreScrollPositionIfNeeded(previous, RoutePaths.userDetails);

    if (_listType == UserListType.Other) {
      //_store.dispatch();
    }
  }
  //
  void openUserDetails(User user) {
    storeCurrentScrollPosition();
    //
    final url = RoutePaths.userDetails.toUrl();
    _router.navigate(url);
  }
}