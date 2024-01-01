import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:architecture_template_v2/product/state/container/app_state_items.dart';
import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  AppNetworkManager get appNetWorkManager => AppStateItems.appNetworkManager;
}
