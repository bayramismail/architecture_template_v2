import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:architecture_template_v2/product/state/container/app_state_items.dart';
import 'package:architecture_template_v2/product/state/view_model/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///
abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ///
  AppNetworkManager get appNetWorkManager => AppStateItems.appNetworkManager;

  ///
  //AppViewModel get appViewModel => AppStateItems.appViewModel;
  AppViewModel get appViewModel => context.read<AppViewModel>();
}
