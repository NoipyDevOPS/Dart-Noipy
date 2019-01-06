
import 'package:core/src/models/user.dart';
import 'package:core/src/models/loading_status.dart';
import 'package:meta/meta.dart';

@immutable
class UserState{
  UserState({
    @required this.active,
    @required this.activeUsers
  })

  final LoadingStatus active;
  final List<User> activeUsers;

  factory UserState.initial() {
    return UserState(
      active: LoadingStatus.idle,
      activeUsers: [],
    );
  }
  
}