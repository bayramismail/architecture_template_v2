import 'package:architecture_template_v2/product/init/config/app_environment.dart';
import 'package:architecture_template_v2/product/service/manager/app_network_manager.dart';
import 'package:architecture_template_v2/product/service/manager/service_path.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

void main() {
  late final AppNetworkManager manager;
  setUp(() {
    AppEnvironment.general();
    manager = AppNetworkManager.base();
  });
  test('get users items from api', () async {
    final response = await manager.send<User, List<User>>(
      ServicePath.usersV2.value,
      parseModel: User(),
      method: RequestType.GET,
    );
    expect(response.data, isNotNull);
  });
}
