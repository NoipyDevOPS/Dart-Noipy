import 'dart:async';
import 'dart:convert';
import 'package:core/src/models/event.dart';
import 'package:core/src/models/user.dart';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class NoipyApi {
  static bool useFinnish = false;

  NoipyApi(this.client);
  final Client client;
}