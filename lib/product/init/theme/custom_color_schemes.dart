import 'package:flutter/material.dart';

/// Project custom colors
final class CustomColorScheme {
  CustomColorScheme._();

  /// Light color scheme set
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF6750A4),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFE9DDFF),
    onPrimaryContainer: Color(0xFF22005D),
    secondary: Color(0xFF006A67),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF70F7F1),
    onSecondaryContainer: Color(0xFF00201F),
    tertiary: Color(0xFF7E5260),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFD9E3),
    onTertiaryContainer: Color(0xFF31101D),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF1C1B1E),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF1C1B1E),
    surfaceVariant: Color(0xFFE7E0EB),
    onSurfaceVariant: Color(0xFF49454E),
    outline: Color(0xFF7A757F),
    onInverseSurface: Color(0xFFF4EFF4),
    inverseSurface: Color(0xFF313033),
    inversePrimary: Color(0xFFCFBCFF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF6750A4),
    outlineVariant: Color(0xFFCAC4CF),
    scrim: Color(0xFF000000),
  );

  /// Dark color scheme set
  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFCFBCFF),
    onPrimary: Color(0xFF381E72),
    primaryContainer: Color(0xFF4F378A),
    onPrimaryContainer: Color(0xFFE9DDFF),
    secondary: Color(0xFF4EDAD5),
    onSecondary: Color(0xFF003735),
    secondaryContainer: Color(0xFF00504D),
    onSecondaryContainer: Color(0xFF70F7F1),
    tertiary: Color(0xFFEFB8C8),
    onTertiary: Color(0xFF4A2532),
    tertiaryContainer: Color(0xFF633B48),
    onTertiaryContainer: Color(0xFFFFD9E3),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF1C1B1E),
    onBackground: Color(0xFFE6E1E6),
    surface: Color(0xFF1C1B1E),
    onSurface: Color(0xFFE6E1E6),
    surfaceVariant: Color(0xFF49454E),
    onSurfaceVariant: Color(0xFFCAC4CF),
    outline: Color(0xFF948F99),
    onInverseSurface: Color(0xFF1C1B1E),
    inverseSurface: Color(0xFFE6E1E6),
    inversePrimary: Color(0xFF6750A4),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFCFBCFF),
    outlineVariant: Color(0xFF49454E),
    scrim: Color(0xFF000000),
  );
}
