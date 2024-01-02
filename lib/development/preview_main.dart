import 'package:architecture_template_v2/product/init/application_initialize.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/init/state_initialize.dart';
import 'package:architecture_template_v2/product/init/theme/index.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:architecture_template_v2/product/state/view_model/app_view_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/widgets.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(DevicePreview(
    builder: (context) =>
        StateInitialize(child: ProductLocalization(child: _MyApp())),
  ));
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
      supportedLocales: context.supportedLocales,
      themeMode: context.watch<AppViewModel>().state.themeMode,
      locale: context.locale,
      title: 'Material App',
    );
  }
}
