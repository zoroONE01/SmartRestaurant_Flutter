part of utils;

class ThemeManager with ChangeNotifier {
  ThemeManager._();

  ThemeMode themeMode = ThemeMode.light;

  static final ThemeManager _instance = ThemeManager._();

  factory ThemeManager() => _instance;

  final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
      seedColor: colorPrimary,
      primary: colorPrimary,
      onPrimary: colorSecondary,
      error: colorError,
      onSurfaceVariant: colorOnSurface,
      brightness: Brightness.light,
      tertiary: colorPrimary,
      tertiaryContainer: colorPrimaryVar,
      background: colorSecondary,
      secondary: colorBackground,
      secondaryContainer: Colors.white.withOpacity(0.9));

  final _darkColorScheme = ColorScheme.fromSeed(
      seedColor: colorPrimary,
      primary: colorPrimary,
      onPrimary: colorBackground,
      onPrimaryContainer: colorSurfaceVar,
      secondary: colorSecondary,
      background: colorBackground,
      onBackground: colorOnBackground,
      surface: colorSurface,
      error: colorError,
      onSurface: colorOnSurface,
      onSurfaceVariant: colorSurfaceVar,
      brightness: Brightness.dark,
      tertiary: colorBackground,
      tertiaryContainer: Colors.black,
      secondaryContainer: Colors.black.withOpacity(0.9));

  ThemeData get lightTheme => ThemeData.light().copyWith(
        colorScheme: _lightColorScheme,
        useMaterial3: true,
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Comfortaa',
            ),
      );

  ThemeData get darkTheme => ThemeData.dark().copyWith(
        colorScheme: _darkColorScheme,
        useMaterial3: true,
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'Comfortaa',
            ),
      );
// void switchTheme(BuildContext context){
//   themeMode = MediaQuery.of(context).platformBrightness as ThemeMode;
//   if(themeMode == Brightness.dark){
//     reutne
//   }
// }
}
