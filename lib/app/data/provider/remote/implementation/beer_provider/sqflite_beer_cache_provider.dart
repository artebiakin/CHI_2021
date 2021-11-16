import 'package:sqflite/sqflite.dart';

import '../../../../../core/error/exception.dart';
import '../../../../models/beer/beer.dart';
import '../../interface/i_beer_cache_provider.dart';

class SqfliteBeerCacheProvider extends IBeerCacheProvider {
  static const TABLE_NAME = 'beers';

  late Database _database;

  @override
  Future<void> init() async {
    _database = await openDatabase(
      'beer_database.db',
      onCreate: (db, _) => db.execute(
        'CREATE TABLE $TABLE_NAME(id INTEGER PRIMARY KEY, name TEXT NOT NULL, tagline TEXT NOT NULL, first_brewed TEXT NOT NULL, description TEXT NOT NULL, image_url TEXT NOT NULL, abv INTEGER NOT NULL, ibu INTEGER NOT NULL, target_fg INTEGER NOT NULL, target_og INTEGER NOT NULL, ebc INTEGER, srm INTEGER, ph INTEGER, attenuation_level INTEGER NOT NULL)',
      ),
      version: 1,
    );
    return super.init();
  }

  @override
  Future<List<Beer>> getBeers({int offset = 0, int limit = 10}) async {
    try {
      final List<Map<String, dynamic>> maps =
          await _database.query(TABLE_NAME, offset: offset, limit: limit);

      return List.generate(maps.length, (i) => Beer.fromJson(maps[i]));
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> save(List<Beer> beers) async {
    try {
      beers.forEach((element) async {
        await _database.insert(TABLE_NAME, element.toJson());
      });
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> dispose() async {
    await _database.close();
    return super.dispose();
  }
}
