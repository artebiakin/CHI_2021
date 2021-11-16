import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'app/data/provider/local/implementation/idb_beer_cache_provider.dart';
import 'app/data/provider/local/implementation/sqflite_beer_cache_provider.dart';
import 'app/data/provider/local/interface/i_beer_cache_provider.dart';
import 'app/data/provider/remote/implementation/impl_beer_api_provider.dart';
import 'app/data/provider/remote/interface/i_beer_api_provider.dart';
import 'app/data/services/implementation/impl_auth_service.dart';
import 'app/data/services/implementation/impl_beer_service.dart';
import 'app/data/services/interface/i_auth_service.dart';
import 'app/data/services/interface/i_beer_service.dart';
import 'app/theme/theme.dart';

Future<void> init() async {
  Get

    // Providers
    ..lazyPut<IBeerApiProvider>(() => ImplBeerApiProvider())
    ..lazyPut<IBeerCacheProvider>(
        () => kIsWeb ? IdbBeerCacheProvider() : SqfliteBeerCacheProvider())
    // Services
    ..lazyPut<IAuthService>(() => ImplAuthService())
    // Utils
    ..lazyPut<ITheme>(() => LightTheme());

  await Get.putAsync<IBeerService>(
      () => ImplBeerService(Get.find(), Get.find()).init());
}
