// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'package:intl/intl.dart';
//
class Messages {
  String get appName => Intl.message('Noipy', name: 'appName');
  String get searchHint => Intl.message('Search...', name: 'searchHint'); 
}