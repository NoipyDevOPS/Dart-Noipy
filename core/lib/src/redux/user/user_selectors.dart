import 'dart:collection';

import 'package:core/src/models/user.dart';
import 'package:core/src/redux/app/app_state.dart';
import 'package:reselect/reselect.dart';
/*
final activeUsersSelector = createSelector2(
  (AppState state) => state.userState.active,
);*/
/*
final activeUsersSelector = createSelector2(
  (AppState state) => state.userState.active,
  (AppState state) => state.searchQuery,
  _usersOrUserSearch,
);
*/

List<User> _usersOrUserSearch(List<User> users, String searchQuery) {
  return searchQuery == null
      ? _uniqueUsers(users)
      : _eventsWithSearchQuery(users, searchQuery);
}

/// Since Finnkino XML API considers "The Grinch" and "The Grinch 2D" to be two
/// completely different events, we might get a lot of duplication. We have to
/// do this hack because it is quite boring to display four movie posters that
/// are exactly the same.
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
    return user.name.contains(searchQueryPattern) ||
        user.name.contains(searchQueryPattern);
  }).toList();
}