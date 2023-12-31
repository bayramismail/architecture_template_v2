import 'package:flutter/widgets.dart';

/// StateFull widget mixin to handle loading state
mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  ///Change loading state
  /// If user want to force , give a bool value
  void changeLoading({bool? isLoading}) {
    if (isLoading != null) _isLoadingNotifier.value = isLoading;

    _isLoadingNotifier.value = !_isLoadingNotifier.value;
  }
}
