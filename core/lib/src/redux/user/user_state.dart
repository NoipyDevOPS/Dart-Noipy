
import 'package:core/src/models/user.dart';
import 'package:core/src/models/loading_status.dart';
import 'package:meta/meta.dart';

@immutable
class UserState{
  UserState({
    @required this.active,
    @required this.activeUsers
  })

  LoadingStatus active;
  final List<User> activeUsers;

  factory UserState.initial() {
    return UserState(
      active: LoadingStatus.idle,
      activeUsers: [],
    );
  }

  UserState copyWith({
    LoadingStatus active,
    List<User> activeUsers,
  }) {
    return UserState(
      active: active ?? this.active,
      activeUsers: activeUsers ?? this.activeUsers,
    );
  }

   @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserState &&
          runtimeType == other.runtimeType &&
          active == other.active &&
          activeUsers == other.activeUsers;

  @override
  int get hashCode =>
      active.hashCode ^
      activeUsers.hashCode;

}