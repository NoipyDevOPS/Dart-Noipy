// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 10/01/2019
import 'dart:async';
import 'dart:convert';
import 'dart:io';
//
final _httpClient = HttpClient();
//
Future<String> getRequest(Uri uri) async {
  final request = await _httpClient.getUrl(uri);
  final response = await request.close();

  return response.transform(utf8.decoder).join();
}