import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../../core/error/exception.dart';
import '../../../core/error/failures.dart';
import '../../models/beer/beer.dart';
import '../../provider/remote/interface/i_beer_api_provider.dart';
import '../../provider/remote/interface/i_beer_cache_provider.dart';
import '../interface/i_beer_service.dart';

class ImplBeerService extends IBeerService {
  ImplBeerService(
      IBeerApiProvider iBeerApiProvider, IBeerCacheProvider iBeerCacheProvider)
      : _iBeerApiProvider = iBeerApiProvider,
        super(iBeerCacheProvider);

  final IBeerApiProvider _iBeerApiProvider;

  @override
  Future<IBeerService> init() async {
    await iBeerCacheProvider.init();
    return this;
  }

  @override
  Future<Either<Failure, List<Beer>>> get(
      {int offset = 0, int limit = 10}) async {
    try {
      final beers = await iBeerCacheProvider
          .getBeers(offset: offset, limit: limit)
          .catchError((onError) => <Beer>[]);

      if (beers.isEmpty) {
        final response =
            await _iBeerApiProvider.getBeer(offset: offset, limit: limit);
        await iBeerCacheProvider.save(response);

        Get.rawSnackbar(message: 'Data from remote service');

        return Right(response);
      }

      Get.rawSnackbar(message: 'Data from cache');
      return Right(beers);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
