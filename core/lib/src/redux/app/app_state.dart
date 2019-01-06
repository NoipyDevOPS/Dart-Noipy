
import 'package:core/src/redux/user/user_state.dart';

import 'package:meta/meta.dart';

@immutable
class AppState {
  AppState({
    @required this.userState,
  });

  final UserState userState;


  factory AppState.initial() {
    return AppState(
      userState: UserState.initial()
    );
  }

  AppState copyWith({
    UserState userState,
  }) {
    return AppState(
      userState: userState ?? this.userState,
    );
  }



}