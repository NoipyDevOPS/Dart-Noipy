// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'dart:collection';
//
import 'package:core/src/models/user.dart';
import 'package:core/src/redux/app/app_state.dart';
import 'package:reselect/reselect.dart';
/*
final activeUsersSelector = createSelector2(
  (AppState state) => state.userState.active,
);*/
//Selector for active Users
final activeUsersSelector = createSelector2(
  (AppState state) => state.userState.activeUsers,
  (AppState state) => state.searchQuery,
  _usersOrUserSearch,
);

List<User> _usersOrUserSearch(List<User> users, String searchQuery) {
  return searchQuery == null
      ? _uniqueUsers(users)
      : _eventsWithSearchQuery(users, searchQuery);
}
//
User userByIdSelector(AppState state, String id) {
  final predicate = (user) => user.id == id;

  return activeUsersSelector(state).firstWhere(
    predicate,
    orElse: () {
      return activeUsersSelector(state).firstWhere(
        predicate,
        orElse: () => null,
      );
    },
  );
}
//
List<User> _uniqueUsers(List<User> original) {
  final uniqueUserMap = LinkedHashMap<String, User>();
  original.forEach((user) {
    uniqueUserMap[user.id] = user;
  });

  return uniqueUserMap.values.toList();
}

List<User> _eventsWithSearchQuery(List<User> original, String searchQuery) {
  final searchQueryPattern = RegExp(searchQuery, caseSensitive: false);

  return original.where((user) {
    return user.firstname.contains(searchQueryPattern) ||
        user.lastname.contains(searchQueryPattern);
  }).toList();
}