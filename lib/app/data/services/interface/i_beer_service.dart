import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../../core/error/failures.dart';
import '../../models/beer/beer.dart';
import '../../provider/remote/interface/i_beer_cache_provider.dart';

abstract class IBeerService extends GetxService {
  IBeerService(this.iBeerCacheProvider);

  final IBeerCacheProvider iBeerCacheProvider;

  Future<IBeerService> init() async {
    await iBeerCacheProvider.init();
    return this;
  }

  Future<Either<Failure, List<Beer>>> get({int offset = 0, int limit = 10});

  @override
  Future<void> onClose() async {
    await iBeerCacheProvider.dispose();
    super.onClose();
  }
}
