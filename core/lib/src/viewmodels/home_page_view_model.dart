// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 13/01/2019
import 'package:collection/collection.dart';
import 'package:core/src/models/user.dart';
import 'package:core/src/models/loading_status.dart';
//
import 'package:core/src/redux/app/app_state.dart';
import 'package:core/src/redux/user/user_actions.dart';
//
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
//
class HomePageViewModel{
  HomePageViewModel({
    @required this.status,
    @required this.users,
    @required this.refreshHome,
  });
  //
  final LoadingStatus status;
  final List<User> users;
  final Function refreshHome;
  //
  static HomePageViewModel fromStore(
      Store<AppState> store,
      UserListType type,
  ) {
    return HomePageViewModel(
      status        : store.state.userState.loadingStatus,
      users         : store.state.userState.activeUsers,
      refreshHome   : () => store.dispatch(RefreshUser(type)),
    );
  }

}