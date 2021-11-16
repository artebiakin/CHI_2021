import 'package:get/get.dart';

import '../data/models/beer/beer.dart';
import '../data/services/interface/i_auth_service.dart';
import '../data/services/interface/i_beer_service.dart';
import '../routes/app_pages.dart';

class HomeController extends GetxController with StateMixin<List<Beer>> {
  final IBeerService _beerService = Get.find();
  final IAuthService _authService = Get.find();
  final beers = <Beer>[];

  @override
  Future<void> onReady() async {
    final response = await _beerService.get();

    response.fold(
      (l) => change(null, status: RxStatus.error(l.message)),
      (beers) {
        this.beers.addAll(beers);
        change(this.beers, status: RxStatus.success());
      },
    );

    super.onReady();
  }

  void goToDetails(id) {}

  Future<void> loadNewBeers() async {
    change(null, status: RxStatus.loading());
    (await _beerService.get(offset: beers.length)).fold(
      (l) => change(null, status: RxStatus.error(l.message)),
      (newBeers) {
        beers.addAll(newBeers);
        change(beers, status: RxStatus.success());
      },
    );
  }

  void logOut() async {
    (await _authService.logOut()).fold(
      (l) => Get.rawSnackbar(message: l.toString()),
      (r) => Get.offAllNamed(Routes.SPLASH),
    );
  }
}
