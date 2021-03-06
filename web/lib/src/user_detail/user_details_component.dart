// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 10/01/2019
import 'dart:async';
import 'dart:html' as html;
//
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:redux/redux.dart';
import 'package:core/core.dart';
//
import 'package:dart_noipy/src/routes.dart';
//
@Component(
  selector: 'user-details',
  styleUrls: ['user_details_component.css'],
  templateUrl: 'user_details_component.html',
  directives: [
    NgIf,
    NgFor,
  ],
  pipes: [DatePipe],
)
class UserDetailsComponent implements OnInit, OnActivate, OnDestroy{
  UserDetailsComponent(this._store, this._router, this.messages);
  final Store<AppState> _store;
  final Router          _router;
  final Messages        messages;
  //
  User user;
  //
  bool _navigatedFromApp  = false;
  bool contentVisible     = false;
  StreamSubscription<AppState> _userDetailsSubscription;

  @override
  void ngOnInit() {
    // Reset the scroll position in case this page was previously opened.
    html.window.scrollTo(0, 0);
    print("UserDetailsComponent - ngOnInit");
  }

  @override
  void ngOnDestroy() => _userDetailsSubscription?.cancel();

  @override
  void onActivate(RouterState previous, RouterState current) {
    print("UserDetailsComponent - onActivate");
    _navigatedFromApp = previous != null;
    _populateUserDetails(
      current.parameters['userId'],
    );
  }
  //
  void goBack() {
    if (_navigatedFromApp) {
      html.window.history.back();
      return;
    }

    _router.navigateByUrl(
      RoutePaths.home.toUrl(),
      replace: true,
    );
  }
  //
  void _populateUserDetails(String userId,) {
    user = userByIdSelector(_store.state, userId);
    //
    print("_populateUserDetails");
    print(user);
    if (user != null) {
      _animateContentIntoView();
    } else {
      _store.dispatch(RefreshUser(UserListType.Home));
      _waitForUserDetails(userId);
    }
  }
  //
  void _waitForUserDetails(String userId) {
    final state     = _store.state.userState;
    final isLoading = state.loadingStatus == LoadingStatus.loading;

    if (!isLoading) {
      return;
    }

    _userDetailsSubscription    = _store.onChange.listen((state) {
      final state               = _store.state.userState;
      final hasFinishedLoading  = state.loadingStatus != LoadingStatus.loading;

      if (hasFinishedLoading) {
        _populateUserDetails(userId);
        _userDetailsSubscription.cancel();
        _userDetailsSubscription = null;

        _animateContentIntoView();
      }
    });
  }
  //
  void _animateContentIntoView() =>
      Timer(Duration.zero, () => contentVisible = true);
}