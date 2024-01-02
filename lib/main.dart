import 'package:architecture_template_v2/product/init/application_initialize.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/init/state_initialize.dart';
import 'package:architecture_template_v2/product/init/theme/index.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:architecture_template_v2/product/state/container/app_state_items.dart';
import 'package:architecture_template_v2/product/state/view_model/app_view_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/widgets.dart';

Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(
    ProductLocalization(
      child: StateInitialize(
        child: _MyApp(),
      ),
    ),
  );
}

class _MyApp extends StatelessWidget {
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      builder: CustomResponsive.build,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      localizationsDelegates: context.localizationDelegates,
      //themeMode: AppStateItems.appViewModel.state.themeMode,
      themeMode: context.watch<AppViewModel>().state.themeMode,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Material App',
    );
  }
}
