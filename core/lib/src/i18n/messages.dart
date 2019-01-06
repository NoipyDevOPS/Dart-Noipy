
import 'package:intl/intl.dart';

class Messages {
  String get appName => Intl.message('Noipy', name: 'appName');
  String get searchHint => Intl.message('Search...', name: 'searchHint'); 
}