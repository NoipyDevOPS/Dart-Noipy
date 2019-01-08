// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
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