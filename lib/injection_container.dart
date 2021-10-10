import 'package:get/get.dart';

import 'app/theme/theme.dart';

Future<void> init() async {
  Get

      // Providers

      // Services

      // Utils
      .lazyPut<ITheme>(() => LightTheme());
}
