// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 10/01/2019
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:core/core.dart';
import 'package:redux/redux.dart';
//
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
    NgFor,
  ],
)
class HomePageComponent implements OnActivate {
  HomePageComponent(this._store, this._router, this.messages);
  final Store<AppState> _store;
  final Router          _router;
  final Messages        messages;
  //
  HomePageViewModel get viewModel =>
      HomePageViewModel.fromStore(_store, UserListType.Home);
  //
  @override
  void onActivate(RouterState previous, RouterState current) {
    var _additionalData = current.routePath.additionalData;

  }
  //
  void openLiveDetails(User user) {
    storeCurrentScrollPosition();
    print(user.id);
    print(user);
    //final url = RoutePaths.eventDetails.toUrl();
    //_router.navigate(url);
  }
}