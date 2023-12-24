import 'package:architecture_template_v2/product/init/config/app_configuration.dart';
import 'package:envied/envied.dart';

part 'prod_env.g.dart';

@Envied(
  path: 'asset/env/.prod.env',
  obfuscate: true,
)

/// Product environment variables
final class ProdDevEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdDevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _ProdDevEnv._apiKey;

  @override
  String get apiKey => _apiKey;

  @override
  String get baseUrl => _baseUrl;
}
