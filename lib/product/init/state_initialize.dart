import 'package:architecture_template_v2/product/state/container/app_state_items.dart';
import 'package:architecture_template_v2/product/state/view_model/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///
final class StateInitialize extends StatelessWidget {
  ///
  const StateInitialize({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppViewModel>(
          create: (context) => AppViewModel(),
        )
      ],
      child: child,
    );
  }
}
