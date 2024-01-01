import 'dart:async';

import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:architecture_template_v2/product/state/container/app_state_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

///This class is used to initialize the application process
final class ApplicationInitialize {
  //it's only use for setup business
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(() => _initialize(), (error, stack) {
      Logger().e(error);
    });
  }

  /// this method is used to initialize the application process
  static Future<void> _initialize() async {
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // TODO: Splash
    await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (details) {
      /// crashlytics log insert here
      /// custom service or custom logger insert here
      /// Todo: add custom logger
      Logger().e(details.exceptionAsString());
    };

    AppEnvironment.general();

    ///It must be call after [AppEnvironment.general()]
    AppContainer.setup();
    // Dependency initialize
    // env
  }
}
