
import 'package:core/src/redux/user/user_state.dart';

import 'package:meta/meta.dart';

@immutable
class AppState {
  AppState({
    @required this.searchQuery,
    @required this.userState,
  });

  final String searchQuery;
  final UserState userState;

  factory AppState.initial() {
    return AppState(
      searchQuery: null,
      userState: UserState.initial()
    );
  }

  AppState copyWith({
    String searchQuery,
    UserState userState,
  }) {
    return AppState(
      searchQuery : searchQuery   ?? this.searchQuery,
      userState   : userState     ?? this.userState,
    );
  }

}