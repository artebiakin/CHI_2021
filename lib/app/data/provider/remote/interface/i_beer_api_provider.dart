import 'package:get/get_connect.dart';

import '../../../models/beer/beer.dart';

abstract class IBeerApiProvider extends GetConnect {
  Future<List<Beer>> getBeer({int limit = 10, int offset = 1});
}
