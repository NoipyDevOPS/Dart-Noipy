// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'package:collection/collection.dart';
import 'package:core/src/models/event.dart';
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
    @required this.loading_status,
    @required this.users,
  });

  final LoadingStatus loading_status;
  final List<User> users;

  static HomePageViewModel fromStore(
    Store<AppState> store,
    LoadingStatus loading_status,
  ) {
    return HomePageViewModel(
      loading_status  : store.state.userState.loadingStatus,
      users           : store.state.userState.activeUsers,
      //activeUsersSelector(store.state),
      //refreshEvents: () => store.dispatch(RefreshEventsAction(type)),
    );
  }

}