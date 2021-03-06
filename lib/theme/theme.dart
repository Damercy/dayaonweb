import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: Typography().white.apply(
        fontFamily: GoogleFonts.rubik().fontFamily, displayColor: Colors.white),
    primaryColor: Colors.green,
    scaffoldBackgroundColor: const Color(0xFF201A19),
    splashFactory: InkRipple.splashFactory,
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFF201A19)),
    primarySwatch: Colors.green);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    textTheme: Typography().black.apply(
        fontFamily: GoogleFonts.rubik().fontFamily,
        bodyColor: const Color(0xFF442C2E),
        displayColor: const Color(0xFF442C2E)),
    scaffoldBackgroundColor: const Color(0xFFFFF1EE),
    splashFactory: InkRipple.splashFactory,
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFFFFF1EE)),
    primarySwatch: Colors.green);
