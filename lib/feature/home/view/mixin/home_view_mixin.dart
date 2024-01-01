import 'package:architecture_template_v2/feature/home/view/home_view.dart';
import 'package:architecture_template_v2/product/service/manager/app_network_error_manager.dart';
import 'package:architecture_template_v2/product/service/manager/app_network_manager.dart';
import 'package:flutter/material.dart';

/// Manage your home view business logic
mixin HomeViewMixin on State<HomeView> {
  late AppNetworkManager appNetworkManager;
  late AppNetworkErrorManager appNetworkErrorManager;
  @override
  void initState() {
    super.initState();
    appNetworkManager = AppNetworkManager.base();
    appNetworkErrorManager = AppNetworkErrorManager(context: context);
    appNetworkManager.listenErrorState(
        onErrorStatus: appNetworkErrorManager.handleError);
  }
}
