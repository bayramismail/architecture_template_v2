import 'package:architecture_template_v2/product/service/interface/auth_operation.dart';
import 'package:architecture_template_v2/product/service/manager/index.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

///
final class AuthService extends AuthOperation {
  ///
  AuthService({required INetworkManager<EmptyModel> networkManager})
      : _networkManager = networkManager;

  final INetworkManager<EmptyModel> _networkManager;
  @override
  Future<List<User>> login() async {
    final response = await _networkManager.send<User, List<User>>(
        ServicePath.posts.value,
        parseModel: User(),
        method: RequestType.GET);
    return response.data ?? [];
  }
}
