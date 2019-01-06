
import 'package:core/src/redux/user/user_state.dart';

import 'package:meta/meta.dart';

@immutable
class AppState {
  AppState({
    @required this.userState,
  });

  final UserState userState;

  AppState copyWith({
    UserState userState,
  }) {
    return AppState(
      userState: userState ?? this.userState,
    );
  }

}