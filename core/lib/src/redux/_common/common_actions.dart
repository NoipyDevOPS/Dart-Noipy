// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'package:core/src/models/user.dart';
//
class InitAction {}
//
class InitCompleteAction {
  //
  InitCompleteAction(
    this.users,
    this.selectedUser
  );

  final List<User> users;
  final User selectedUser;
}