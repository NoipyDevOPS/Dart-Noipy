// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 13/01/2019
import 'dart:async';
//
import 'package:core/src/models/user.dart';
import 'package:core/src/models/loading_status.dart';
//
import 'package:core/src/networking/noipy_api.dart';
//
import 'package:core/src/parsers/user_parser.dart';
//
import 'package:core/src/redux/_common/common_actions.dart';
import 'package:core/src/redux/user/preload_user.dart';
import 'package:core/src/redux/user/user_actions.dart';
import 'package:core/src/redux/app/app_state.dart';
//
import 'package:key_value_store/key_value_store.dart';
import 'package:redux/redux.dart';
//
class UserMiddleware extends MiddlewareClass<AppState> {
  UserMiddleware(this.api);
  final NoipyApi api;
  //
  @override
  Future<void> call(
    Store<AppState> store, dynamic action, NextDispatcher next) async {
    print("action UserMiddleware: "+action.toString());
    if (action is InitAction) {
      await _init(action, next);
    } else if(action is RefreshUser){
      //await _refreshEvents(action, next);
    }else if (action is InitCompleteAction){
      await _fetchHomeUsers(next);
    }

  }
  //metodo di init
  Future<Null> _init(InitAction action, NextDispatcher next) async {
    var userJson    = PreloadedData.users;
    //print("usersJson: "+ userJson.toString());
    var users       = UserParser.parse(userJson);
    var currentUser = _getDefaultUser(users);

    next(InitCompleteAction(users, currentUser));
  }

  Future<void> _fetchHomeUsers(NextDispatcher next) async {
    print("_fetchHomeUsers");
    //next(Re(UserListType.Home));
    var userJson    = PreloadedData.users;
    var users       = UserParser.parse(userJson);
    //
    next(ReceivedUserAction(users));
  }
  //
  User _getDefaultUser(List<User> allUsers){
    //var persistedUserId = keyValueStore.getString()
    return allUsers.first;
  }

}

