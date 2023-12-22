import 'package:architecture_template_v2/product/utility/constans/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

///Product localization manager
@immutable
final class ProductLocalization extends EasyLocalization {
  ///ProductLocalization need to [child] and for a wrap locale item
  ProductLocalization({required super.child, super.key})
      : super(
          supportedLocales: _supportedItems,
          path: _translationPath,
          useOnlyLangCode: true,
        );

  static final List<Locale> _supportedItems = Locales.supportedLocales;
  static const String _translationPath = 'assets/translations';

  ///Change project language by using [Locales]
  static Future<void> updateLanguage(
          {required BuildContext context, required Locales value}) =>
      context.setLocale(value.locale);
}
