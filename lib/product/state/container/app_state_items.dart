import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:architecture_template_v2/product/state/container/app_state_container.dart';

final class AppStateItems {
  const AppStateItems._();

  static AppNetworkManager get appNetworkManager =>
      AppContainer.read<AppNetworkManager>();
}
