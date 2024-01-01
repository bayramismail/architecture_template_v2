import 'dart:io';
import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

/// App network manager
class AppNetworkManager extends NetworkManager<EmptyModel> {
  /// init
  AppNetworkManager.base()
      : super(options: BaseOptions(baseUrl: AppEnvironmentItems.baseUrl.value));

  /// Handle error
  /// [onErrorStatus] is error status code [HttpStatus]
  void listenErrorState({required ValueChanged<int> onErrorStatus}) {
    interceptors.add(InterceptorsWrapper(
      onError: (error, handler) {
        onErrorStatus(error.response?.statusCode ?? HttpStatus.notFound);
        return handler.next(error);
      },
    ));
  }
}
