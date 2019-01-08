// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 08/01/2019
import 'dart:async';
import 'dart:convert';
import 'package:core/src/models/event.dart';
import 'package:core/src/models/user.dart';
//
import 'package:http/http.dart';
import 'package:intl/intl.dart';
//
class NoipyApi {
  static bool useFinnish  = false;
  static final baseUrl    = 'https://www.example.com';

  NoipyApi(this.client);
  final Client client;
}