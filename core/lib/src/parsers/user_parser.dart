// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'dart:convert';
//
import 'package:core/src/models/user.dart';

class UserParser{
  //
  static List<User>  parse(String xmlString){
    final data = jsonDecode(xmlString);
    List<User> users = [];
    for( var i = 0 ; i <= data.length; i++ ) {
      users.add(
          User(
            id        : data[i]['id'],
            firstname : data[i]['firstname'],
            lastname  : data[i]['lastname'],
            job       : data[i]['job'],
            image     : data[i]['image']
          ));
    }
    return users;
  }
}