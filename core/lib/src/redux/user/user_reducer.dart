import 'package:core/src/models/event.dart';
import 'package:core/src/models/loading_status.dart';
import 'package:core/src/redux/_common/common_actions.dart';
import 'package:core/src/redux/user/user_state.dart';

UserState userReducer(UserState state, dynamic action) {
  return state.copyWith(
    //active: LoadingStatus.success,
    activeUsers: action.users,
  );

  //return state;
}
