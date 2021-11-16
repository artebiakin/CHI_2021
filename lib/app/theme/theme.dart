import 'package:flutter/material.dart';

part 'light_theme.dart';

abstract class ITheme {
  Color get white => const Color(0xFFFFFFFF);
  Color get blue => const Color(0xFF2D70C7);
  Color get blueGray => const Color(0xFFF5F4FC);
  Color get black => const Color(0xFF000000);

  Color get navigationColor => const Color(0xFF3273C3);
  Color get buttonColor => const Color(0xFF0271CA);
  Color get iconColor => const Color(0xFF02A0EA);
  Color get mapColor => const Color(0xFFD6EDF5);
  Color get red => const Color(0xFFDA3A16);
  Color get brown => const Color(0xFF956736);
  Color get islandColor => const Color(0xFFD8EBF0);
  Color get subtitleColor => const Color(0xFF848285);

  MaterialColor get gray => MaterialColor(
        0xFFD5D2D6,
        <int, Color>{
          100: const Color(0xFFEFEFEF),
          200: const Color(0xFFCECCCF),
          300: const Color(0xFFCACACA).withOpacity(0.7),
          500: const Color(0xFFA0A0A0),
          700: const Color(0xFF727272),
          900: const Color(0xFF3E3E3E),
        },
      );
  Color get blueOpacity => const Color(0xFFE9F6FD);

  ThemeData get appThemeData;
}
