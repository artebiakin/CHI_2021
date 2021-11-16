import 'dart:convert';

import 'package:idb_shim/idb_browser.dart';
import 'package:idb_shim/idb_shim.dart';

import '../../../../core/error/exception.dart';
import '../../../models/beer/beer.dart';
import '../interface/i_beer_cache_provider.dart';

class IdbBeerCacheProvider extends IBeerCacheProvider {
  static const TABLE_NAME = 'beers';

  late Database database;

  @override
  Future<void> init() async {
    final idbFactory = getIdbFactory()!;
    database = await idbFactory.open('chi_db', version: 1,
        onUpgradeNeeded: (VersionChangeEvent event) {
      database = event.database;
      database.createObjectStore(TABLE_NAME, autoIncrement: true);
    });
    return super.init();
  }

  @override
  Future<List<Beer>> getBeers({int offset = 0, int limit = 10}) async {
    try {
      final txn = database.transaction(TABLE_NAME, idbModeReadOnly);
      final store = txn.objectStore(TABLE_NAME);
      final objs = await store.getAll(null, offset + limit);
      await txn.completed;

      final maps = objs.map((e) => jsonDecode(jsonEncode(e))).toList();

      return maps.map((e) => Beer.fromJson(e as dynamic)).skip(offset).toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> save(List<Beer> beers) async {
    try {
      beers.forEach((element) async {
        final txn = database.transaction(TABLE_NAME, idbModeReadWrite);
        final store = txn.objectStore(TABLE_NAME);
        await store.add(element.toJson());
        await txn.completed;
      });
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> dispose() async {
    database.close();
    return super.dispose();
  }
}
