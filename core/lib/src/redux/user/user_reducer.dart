// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 10/01/2019
import 'package:core/src/models/event.dart';
import 'package:core/src/models/loading_status.dart';
import 'package:core/src/redux/_common/common_actions.dart';
import 'package:core/src/redux/user/user_actions.dart';
import 'package:core/src/redux/user/user_state.dart';
//
UserState userReducer(UserState state, dynamic action) {
  print("userReducer - action: "+action.toString());
  if (action is ReceivedUserAction){
    //to fix absolutly
    return state.copyWith(
      loadingStatus: LoadingStatus.success,
      activeUsers: action.users,
    );
  }



  return state;
}
