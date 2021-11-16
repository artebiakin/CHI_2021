import '../../../models/beer/beer.dart';

abstract class IBeerCacheProvider {
  Future<void> init() async {}

  Future<void> dispose() async {}

  Future<List<Beer>> getBeers({int offset = 0, int limit = 10});

  Future<void> save(List<Beer> beers);
}
