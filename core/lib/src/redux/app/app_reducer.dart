import 'package:core/src/redux/app/app_state.dart';
import 'package:core/src/redux/user/user_reducer.dart';


AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    userState: userReducer(state.userState, action),
  );
}