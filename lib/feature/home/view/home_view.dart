import 'package:architecture_template_v2/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:architecture_template_v2/product/init/language/locale_keys.g.dart';
import 'package:architecture_template_v2/product/navigation/app_router.dart';
import 'package:architecture_template_v2/product/widget/project_network_image.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';
import 'package:widgets/widgets.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SuccessDialog.show(title: "Gül", context: context);
        },
      ),
      appBar: _HomeAppBar(),
      body: ListView(
        children: [
          AdaptAllView(
            phone: Text(
              ''.ext.version,
              style: context.general.textTheme.bodyLarge,
            ),
            tablet: Text(
              ''.ext.version,
              style: context.general.textTheme.titleLarge,
            ),
            desktop: Text(
              ''.ext.version,
              style: context.general.textTheme.headlineLarge,
            ),
          ),
          Image.network(''.ext.randomImage),
          Text(''.ext.version),
          Text(
            'ismail',
            style: context.general.textTheme.titleLarge?.copyWith(
              color: '9027a1'.ext.color,
            ),
          ),
          SizedBox(
            height: context.sized.dynamicHeight(0.4),
          ),
          // Future<String>().ext.toBuild(
          //       onSuccess: (val) {
          //         return Card();
          //       },
          //       loadingWidget: Card(),
          //       notFoundWidget: Card(),
          //       onError: () {
          //         return Card();
          //       },
          //     ),
          FloatingActionButton(
            onPressed: () {
              'Bayburt'.ext.launchMaps();
            },
          ),
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
