import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     textTheme: Typography().white.apply(
//         fontFamily: GoogleFonts.rubik().fontFamily, displayColor: Colors.white),
//     primaryColor: const Color(0xFF48DC84),
//     scaffoldBackgroundColor: const Color(0xFF201A19),
//     splashFactory: InkRipple.splashFactory,
//     drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFF201A19)),
//     useMaterial3: true);

// ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: const Color(0xFF48DC84),
//     textTheme: Typography().black.apply(
//         fontFamily: GoogleFonts.rubik().fontFamily,
//         bodyColor: const Color(0xFF442C2E),
//         displayColor: const Color(0xFF442C2E)),
//     scaffoldBackgroundColor: const Color(0xFFFFF1EE),
//     splashFactory: InkRipple.splashFactory,
//     drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFFFFF1EE)),
//     useMaterial3: true);

ThemeData lightTheme =
    ThemeData(colorScheme: lightColorScheme, useMaterial3: true);

ThemeData darkTheme =
    ThemeData(colorScheme: darkColorScheme, useMaterial3: true);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF48DC84),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF6DFDA1),
  onPrimaryContainer: Color(0xFF00210D),
  secondary: Color(0xFFFFF1EE),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF6DFDA1),
  onSecondaryContainer: Color(0xFF00210D),
  tertiary: Color(0xFF3A646F),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFBEEAF6),
  onTertiaryContainer: Color(0xFF001F26),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF40000F),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF40000F),
  surfaceVariant: Color(0xFFDDE5DB),
  onSurfaceVariant: Color(0xFF414941),
  outline: Color(0xFF717971),
  onInverseSurface: Color(0xFFFFECED),
  inverseSurface: Color(0xFFFFF1EE),
  inversePrimary: Color(0xFF4DE088),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF48DC84),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF4DE088),
  onPrimary: Color(0xFF00391B),
  primaryContainer: Color(0xFF00522A),
  onPrimaryContainer: Color(0xFF6DFDA1),
  secondary: Color(0xFF4DE088),
  onSecondary: Color(0xFF00391B),
  secondaryContainer: Color(0xFF00522A),
  onSecondaryContainer: Color(0xFF6DFDA1),
  tertiary: Color(0xFFA2CED9),
  onTertiary: Color(0xFF01363F),
  tertiaryContainer: Color(0xFF204D56),
  onTertiaryContainer: Color(0xFFBEEAF6),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF40000F),
  onBackground: Color(0xFFFFDADB),
  surface: Color(0xFF40000F),
  onSurface: Color(0xFFFFDADB),
  surfaceVariant: Color(0xFF414941),
  onSurfaceVariant: Color(0xFFC1C9BF),
  outline: Color(0xFF8B938A),
  onInverseSurface: Color(0xFF40000F),
  inverseSurface: Color(0xFFFFDADB),
  inversePrimary: Color(0xFF006D39),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF4DE088),
);
