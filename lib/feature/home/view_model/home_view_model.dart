import 'package:architecture_template_v2/feature/home/view_model/state/home_state.dart';
import 'package:architecture_template_v2/product/service/interface/auth_operation.dart';
import 'package:architecture_template_v2/product/state/base/base_cubit.dart';

///
final class HomeViewModel extends BaseCubit<HomeState> {
  ///
  HomeViewModel({required AuthOperation authOperation})
      : _authOperationService = authOperation,
        super(const HomeState(isLoading: false));

  late final AuthOperation _authOperationService;

  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<void> fetchUsers() async {
    final response = await _authOperationService.login();
    emit(state.copyWith(users: response));
  }
}
