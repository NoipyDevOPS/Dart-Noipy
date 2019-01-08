// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'package:core/src/models/user.dart';
import 'package:core/src/models/loading_status.dart';
import 'package:meta/meta.dart';
//
@immutable
class UserState{
  UserState({
    @required this.currentUser,
    @required this.activeUsers
  })

  //final LoadingStatus active;
  final User currentUser;
  final List<User> activeUsers;

  factory UserState.initial() {
    return UserState(
      currentUser: null,
      activeUsers: [],
    );
  }

  UserState copyWith({
    User currentUser,
    List<User> activeUsers,
  }) {
    return UserState(
      currentUser: currentUser ?? this.currentUser,
      activeUsers: activeUsers ?? this.activeUsers,
    );
  }

   @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserState &&
          runtimeType == other.runtimeType &&
          currentUser == other.currentUser &&
          activeUsers == other.activeUsers;

  @override
  int get hashCode =>
      currentUser.hashCode ^
      activeUsers.hashCode;

}