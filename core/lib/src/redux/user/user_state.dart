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
    //@required this.currentUser,
    @required this.loadingStatus,
    @required this.activeUsers
  })

  //final User currentUser;
  final LoadingStatus loadingStatus;
  final List<User> activeUsers;

  factory UserState.initial() {
    return UserState(
      //currentUser: null,
      loadingStatus: LoadingStatus.idle,
      activeUsers: [],
    );
  }

  UserState copyWith({
    LoadingStatus loadingStatus,
    List<User> activeUsers,
  }) {
    return UserState(
      //currentUser: currentUser ?? this.currentUser,
      loadingStatus: loadingStatus ?? this.loadingStatus,
      activeUsers: activeUsers ?? this.activeUsers,
    );
  }

   @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserState &&
          //currentUser == other.currentUser &&
          runtimeType == other.runtimeType &&
          activeUsers == other.activeUsers;

  @override
  int get hashCode =>
      //currentUser.hashCode ^
      activeUsers.hashCode;

}