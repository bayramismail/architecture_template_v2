import 'package:architecture_template_v2/feature/home/view/home_view.dart';
import 'package:architecture_template_v2/feature/home/view_model/home_view_model.dart';
import 'package:architecture_template_v2/product/service/auth_service.dart';
import 'package:architecture_template_v2/product/service/manager/app_network_error_manager.dart';
import 'package:architecture_template_v2/product/state/base/base_state.dart';
import 'package:architecture_template_v2/product/state/container/app_state_items.dart';
import 'package:flutter/material.dart';

/// Manage your home view business logic
mixin HomeViewMixin on BaseState<HomeView> {
  late final AppNetworkErrorManager _appNetworkErrorManager;
  late final HomeViewModel _homeViewModel;

  HomeViewModel get homeViewModel => _homeViewModel;
  @override
  void initState() {
    super.initState();
    _appNetworkErrorManager = AppNetworkErrorManager(context: context);
    AppStateItems.appNetworkManager
        .listenErrorState(onErrorStatus: _appNetworkErrorManager.handleError);

    _homeViewModel = HomeViewModel(
      authOperation: AuthService(networkManager: appNetWorkManager),
    );
  }
}
