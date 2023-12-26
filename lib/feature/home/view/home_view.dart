import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:architecture_template_v2/product/init/language/locale_keys.g.dart';
import 'package:architecture_template_v2/product/init/product_localization.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:architecture_template_v2/product/utility/constans/enums/locales.dart';
import 'package:architecture_template_v2/product/widget/project_network_image.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.lottie.animZombie.lottie(package: 'gen'),
          Assets.images.imgFlags.image(package: 'gen'),
          ProjectNetworkImage(url: ""),
          ElevatedButton(
            onPressed: () {},
            child: Text(AppEnvironmentItems.apiKey.value),
          ),
          const Text('Change language'),
          ElevatedButton(
            onPressed: () async {
              final response = await context.router.push<bool?>(
                HomeDetailRoute(
                  id: "100",
                ),
              );
            },
            child: Text(
              LocaleKeys.general_button_save,
              style: context.general.textTheme.titleMedium,
            ).tr(args: ['deneme2']),
          ),
        ],
      ),
    );
  }
}
