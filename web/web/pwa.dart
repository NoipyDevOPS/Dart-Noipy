import 'package:core/core.dart';
import 'package:pwa/worker.dart';

/*
void main() {
  final cache = DynamicCache('inkino-cache', maxAge: const Duration(days: 1));

  Worker()
    ..offlineUrls = [
      './',
      './manifest.json',
    ]
    ..router.registerGetUrl(
        FinnkinoApi.enBaseUrl, (request) => cache.cacheFirst(request))
    ..router.registerGetUrl(
        FinnkinoApi.fiBaseUrl, (request) => cache.cacheFirst(request))
    ..run(version: '6');
}*/