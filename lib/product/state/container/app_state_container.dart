import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:get_it/get_it.dart';

/// App container for Dependency injection [GetIt]
final class AppContainer {
  AppContainer._();
  static final _getIt = GetIt.I;

  /// Product core required items
  static void setup() {
    _getIt.registerSingleton<AppNetworkManager>(AppNetworkManager.base());
  }

  /// read your dependency item for [AppContainer]
  static T read<T extends Object>() => _getIt<T>();
}
