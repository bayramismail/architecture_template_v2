import 'package:architecture_template_v2/product/init/theme/custom_color_schemes.dart';
import 'package:architecture_template_v2/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///Custom dark theme for project design
final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        fontFamily: GoogleFonts.aDLaMDisplay().fontFamily,
      );

  @override
  // TODO: implement floatingActionButtonThemeData
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData();
}
