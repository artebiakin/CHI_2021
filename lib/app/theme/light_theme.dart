part of './theme.dart';

class LightTheme extends ITheme {
  @override
  Color get white => const Color(0xFFF9F9F9);

  @override
  ThemeData get appThemeData => _lightThemeData;
}

final ThemeData _lightThemeData = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    errorStyle: TextStyle(height: .3, fontSize: 1),
  ),
);
