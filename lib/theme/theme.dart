import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.rubikTextTheme(),
    primaryColor: Colors.green,
    scaffoldBackgroundColor: const Color(0xFF201A19),
    primarySwatch: Colors.green);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: const Color(0xFFFFF1EE),
    textTheme: GoogleFonts.rubikTextTheme(),
    primarySwatch: Colors.green);
