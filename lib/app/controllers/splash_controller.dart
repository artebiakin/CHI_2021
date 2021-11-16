import 'package:get/get.dart';

import '../data/models/user.dart';
import '../data/services/interface/i_auth_service.dart';
import '../routes/app_pages.dart';

class SplashController extends GetxController {
  final IAuthService authService = Get.find();

  @override
  void onReady() {
    _checkAuth();
    super.onReady();
  }

  Future<void> _checkAuth() async {
    final authUser = await authService.getAuthUser();

    return authUser.fold(
      (l) => Get.toNamed(Routes.LANDING),
      (user) {
        if (user is UnauthorizedUser) {
          return Get.offAllNamed(Routes.LANDING);
        } else {
          return Get.offAllNamed(Routes.HOME);
        }
      },
    );
  }
}
