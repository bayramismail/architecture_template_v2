// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppState extends Equatable {
  const AppState({this.themeMode = ThemeMode.system});
  final ThemeMode themeMode;

  @override
  List<Object?> get props => [themeMode];

  AppState copyWith({ThemeMode? themeMode}) {
    return AppState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
