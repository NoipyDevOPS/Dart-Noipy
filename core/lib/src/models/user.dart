import 'package:meta/meta.dart';

/**
 * User List Status
 */
enum UserListStatus {
  active,
  notActive
}

class User {
  User({
    this.id,
    this.name
  });

  final String id;
  final String name;

}