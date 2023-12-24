import 'package:architecture_template_v2/product/init/config/app_configuration.dart';
import 'package:architecture_template_v2/product/init/config/dev_env.dart';
import 'package:architecture_template_v2/product/init/config/prod_env.dart';
import 'package:flutter/foundation.dart';

/// Application environment manager class
final class AppEnvironment {
  /// Setup application environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  ///General application environment setup
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdDevEnv();
  }
  static late final AppConfiguration _config;
}

/// Get application environment items
enum AppEnvironmentItems {
  ///Network base url
  baseUrl,

  /// Google maps api key
  apiKey;

  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment is not initialized');
    }
  }
}
