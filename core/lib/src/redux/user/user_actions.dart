// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'package:core/src/models/user.dart';
import 'package:meta/meta.dart';
//
class RefreshUserStatus {
  RefreshUserStatus(this.status);
  final UserListStatus status;
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
  ErrorLoadingUserAction(this.status);
  final UserListStatus status;
}
