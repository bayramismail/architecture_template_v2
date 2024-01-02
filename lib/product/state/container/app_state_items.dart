import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:architecture_template_v2/product/state/container/app_state_container.dart';
import 'package:architecture_template_v2/product/state/view_model/app_view_model.dart';

final class AppStateItems {
  const AppStateItems._();

  static AppNetworkManager get appNetworkManager =>
      AppContainer.read<AppNetworkManager>();

  static AppViewModel get appViewModel => AppContainer.read<AppViewModel>();
}
