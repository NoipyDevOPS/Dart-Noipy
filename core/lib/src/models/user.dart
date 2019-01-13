// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'package:meta/meta.dart';
/**
 * User List Type
 */
enum UserListType {
  Home,
  Other
}
/**
* User class create by Allan Nava
 *
*/
class User {
  User({
    this.id,
    this.firstname,
    this.lastname,
    this.job,
    this.image,
  });
  //
  final String id;
  final String firstname;
  final String lastname;
  final String job;
  final String image;

  @override
  String toString() {
    return 'User{id: $id, firstname: $firstname, lastname: $lastname, job: $job, image: $image}';
  }
//

}