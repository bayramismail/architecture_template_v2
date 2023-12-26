// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

/// Internal usage
final class DialogBase {
  DialogBase._();

  /// Show a general dialog with
  /// [builder] for the dialog
  /// [barrierDismissible] for  is false
  /// [useSafeArea] is false
  /// This will always return [T]
  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) {
    return showDialog<T>(
      context: context,
      builder: builder,
      barrierDismissible: false,
      useSafeArea: false,
    );
  }
}
