part of utils;

class ThemeManager with ChangeNotifier {
  ThemeManager._();

  ThemeMode themeMode = ThemeMode.light;

  static final ThemeManager _instance = ThemeManager._();

  factory ThemeManager() => _instance;

  final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
    seedColor: colorYellowOrange,
    primary: colorYellowOrange,
    error: colorFireOpalRed,
    onSurfaceVariant: colorWebGrey,
    brightness: Brightness.light,
    secondary: colorYellowOrange,
    secondaryContainer: colorOrganePumpkin,
  );

  final _darkColorScheme = ColorScheme.fromSeed(
    seedColor: colorYellowOrange,
    primary: colorYellowOrange,
    onPrimary: colorRaisinBlack,
    onPrimaryContainer: colorSonicSilver,
    background: colorEerieBlack,
    surface: colorRaisinBlack,
    error: colorFireOpalRed,
    onSurface: colorWhite,
    onSurfaceVariant: colorWebGrey,
    brightness: Brightness.dark,
    secondary: colorEerieBlack,
    secondaryContainer: colorEerieBlack,
  );

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
