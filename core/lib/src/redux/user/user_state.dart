// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 10/01/2019
import 'package:core/src/models/user.dart';
import 'package:core/src/models/loading_status.dart';
import 'package:meta/meta.dart';
//
@immutable
class UserState{
  UserState({
    @required this.loadingStatus,
    @required this.activeUsers
  })

  //final User currentUser;
  // ignore: missing_function_body
  final LoadingStatus loadingStatus;
  final List<User> activeUsers;

  factory UserState.initial() {
    return UserState(
      loadingStatus: LoadingStatus.idle,
      activeUsers: [],
    );
  }

  UserState copyWith({
    LoadingStatus loadingStatus,
    List<User> activeUsers,
  }) {
    return UserState(
      loadingStatus: loadingStatus ?? this.loadingStatus,
      activeUsers: activeUsers ?? this.activeUsers,
    );
  }

   @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserState &&
          runtimeType == other.runtimeType &&
          activeUsers == other.activeUsers;

  @override
  int get hashCode =>
      activeUsers.hashCode;

}