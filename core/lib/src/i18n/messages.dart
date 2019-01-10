// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'package:intl/intl.dart';
//
class Messages {
  String get appName      => Intl.message('Noipy', name: 'appName');
  String get searchHint   => Intl.message('Search...', name: 'searchHint');
  String get allEmpty     => Intl.message('All empty!', name: 'allEmpty');
  String get oops         => Intl.message('Oops!', name: 'oops');
  String get tryAgain     => Intl.message('TRY AGAIN', name: 'tryAgain');
}