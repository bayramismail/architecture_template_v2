import 'package:flutter/material.dart';

///Project  locale enum for operation and configuration
enum Locales {
  ///Turkish locle
  tr(Locale('tr', 'TR')),

  ///Engilish locle
  en(Locale('en', 'US'));

  ///locale value
  final Locale locale;

  const Locales(this.locale);

  ///project supported locale enums
  static final List<Locale> supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale
  ];
}
