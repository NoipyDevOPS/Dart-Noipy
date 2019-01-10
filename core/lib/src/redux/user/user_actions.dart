// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 10/01/2019
import 'package:core/src/models/user.dart';
import 'package:meta/meta.dart';
//
class RefreshUser {
  RefreshUser(this.type);
  final UserListType type;
}
//
class FetchUser {}
//
class ReceivedUserAction{
  ReceivedUserAction(this.users);
  final List<User> users;
}
//
class ErrorLoadingUserAction{
  ErrorLoadingUserAction(this.type);
  final UserListType type;
}
