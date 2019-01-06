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