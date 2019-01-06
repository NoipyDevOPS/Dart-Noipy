import 'package:collection/collection.dart';
import 'package:core/src/models/event.dart';
import 'package:core/src/models/user.dart';
import 'package:core/src/models/loading_status.dart';
import 'package:core/src/redux/app/app_state.dart';
import 'package:core/src/redux/user/user_actions.dart';

import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class UserPageViewModel{
  UserPageViewModel({
    @required this.loading_status,
    @required this.user,
  });

  final LoadingStatus loading_status;
  final List<User> user;

  static UserPageViewModel fromStore(
    Store<AppState> store,
    UserListStatus loading_status,
  ) {
    return UserPageViewModel(
      loading_status: store.state.userState.active,
      user: activeUsersSelector(store.state),
      //refreshEvents: () => store.dispatch(RefreshEventsAction(type)),
    );
  }

}