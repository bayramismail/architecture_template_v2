part of 'custom_login_button.dart';

//PRIVATE MİXİN KULLANIMI
mixin _CustomLoginButtonMixin
    on MountedMixin<CustomLoginButton>, State<CustomLoginButton> {
  ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> onPressed(BuildContext context) async {
    _isLoadingNotifier.value = true;
    final response = await widget.onOperation.call();
    await safeOperation(() async {
      if (response) {
        Navigator.of(context).pop();
      }
      _isLoadingNotifier.value = false;
    });
  }
}
