import 'package:get/get.dart';

import '../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => Get.toNamed(Routes.LANDING),
    );
    super.onReady();
  }
}
