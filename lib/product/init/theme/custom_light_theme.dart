import 'package:architecture_template_v2/product/init/theme/custom_color_schemes.dart';
import 'package:architecture_template_v2/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

///Custom light theme for project design
final class CustomLightTheme implements CustomTheme {
  @override

  /// TODO: change to initialize ThemeData instead of computed
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  @override
  // TODO: implement floatingActionButtonThemeData
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData();
}
