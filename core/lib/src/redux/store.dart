// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 13/01/2019
import 'package:core/src/networking/noipy_api.dart';
import 'package:core/src/redux/app/app_reducer.dart';
import 'package:core/src/redux/app/app_state.dart';
import 'package:core/src/redux/user/user_middleware.dart';
import 'package:http/http.dart';
import 'package:key_value_store/key_value_store.dart';
import 'package:redux/redux.dart';
//
Store<AppState> createStore(Client client, KeyValueStore KeyValueStore){
  final noiypApi = NoipyApi(client);
  //
  return Store(
      appReducer,
      initialState: AppState.initial(),
      distinct: true,
      middleware: [
        UserMiddleware(noiypApi),
      ],
    );
}