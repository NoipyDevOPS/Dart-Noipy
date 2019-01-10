// # Author : Allan nava
// # Date   : 05/01/2019
// # Update : 10/01/2019
import 'package:core/core.dart';
import 'package:pwa/worker.dart';

void main() {
  final cache = DynamicCache('noipy-cache', maxAge: const Duration(days: 1));

  Worker()
    ..offlineUrls = [
      './',
      './manifest.json',
    ]
    ..router.registerGetUrl(
        NoipyApi.baseUrl, (request) => cache.cacheFirst(request)
    );
}