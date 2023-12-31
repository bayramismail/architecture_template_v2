import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// StateFull widget mixin to handle loading state
mixin MountedMixin<T extends StatefulWidget> on State<T> {
  ///manage your mounted state
  Future<void> safeOperation(AsyncCallback callback) async {
    if (!mounted) return;
    await callback.call();
  }
}
