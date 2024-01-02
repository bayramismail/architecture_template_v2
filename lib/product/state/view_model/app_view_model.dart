// ignore_for_file: public_member_api_docs

import 'package:architecture_template_v2/product/state/base/base_cubit.dart';
import 'package:architecture_template_v2/product/state/view_model/app_state.dart';
import 'package:flutter/material.dart';

final class AppViewModel extends BaseCubit<AppState> {
  AppViewModel() : super(const AppState());

  /// Change theme mode
  /// [themeMode] is [ThemeMode.light] or [ThemeMode.dark]
  void changeThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }
}
