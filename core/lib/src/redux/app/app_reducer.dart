// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'package:core/src/redux/app/app_state.dart';
import 'package:core/src/redux/user/user_reducer.dart';
import 'package:core/src/redux/_common/search.dart';
//
AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    searchQuery : searchQueryReducer(state.searchQuery, action),
    userState   : userReducer(state.userState, action),
  );
}
