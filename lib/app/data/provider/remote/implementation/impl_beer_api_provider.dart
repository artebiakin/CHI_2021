import '../../../../core/error/exception.dart';
import '../../../../utils/constants.dart';
import '../../../models/beer/beer.dart';
import '../interface/i_beer_api_provider.dart';

class ImplBeerApiProvider extends IBeerApiProvider {
  String get _basePath => 'https://api.punkapi.com/v2/';

  @override
  Future<List<Beer>> getBeer({int limit = 10, int offset = 1}) async {
    try {
      final uri =
          Uri.parse('${_basePath}beers?page=${offset + 1}&per_page=$limit');
      final response = await get(uri.toString());

      if (response.isOk) {
        final listJson = response.body as List;
        final beers = listJson.map((e) => Beer.fromJson(e)).toList();

        return beers;
      }
      throw ServerException(
          response.bodyString ?? Constants.defaultErrorMessage);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
