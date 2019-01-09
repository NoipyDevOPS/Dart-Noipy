import 'dart:async';
//
import 'package:core/src/models/user.dart';
import 'package:core/src/models/loading_status.dart';
import 'package:core/src/networking/noipy_api.dart';
import 'package:core/src/redux/_common/common_actions.dart';
import 'package:core/src/redux/user/user_actions.dart';
import 'package:core/src/redux/app/app_state.dart';

import 'package:redux/redux.dart';

class UserMiddleware extends MiddlewareClass<AppState> {
  UserMiddleware(this.api);
  final NoipyApi api;
  
  @override
  Future<void> call(
    Store<AppState> store, dynamic action, NextDispatcher next) async {
    //next(action);
    if (action is FetchUser){

    }else if(action is RefreshUserStatus){
      //await _refreshEvents(action, next);
    }
  }

  /*Future<void> _fetchUsers(){

  }*/

}

