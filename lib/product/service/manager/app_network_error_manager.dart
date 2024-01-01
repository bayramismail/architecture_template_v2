import 'dart:io';

import 'package:flutter/widgets.dart';

/// Manage your network error with screen
final class AppNetworkErrorManager {
  ///
  AppNetworkErrorManager({required this.context});

  final BuildContext context;

  ///
  void handleError(int value) {
    if (value == HttpStatus.unauthorized) {
      //
    }
  }
}
