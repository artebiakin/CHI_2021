import 'package:get/get.dart';

import '../bindings/home_binding.dart';
import '../bindings/landing_binding.dart';
import '../bindings/splash_binding.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/landing_page/landing_page.dart';
import '../ui/pages/splash_page/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LANDING,
      page: () => LandingPage(),
      binding: LandingBinding(),
    ),
  ];
}
