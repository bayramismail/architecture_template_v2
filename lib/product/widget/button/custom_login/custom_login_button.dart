// ignore_for_file: public_member_api_docs

import 'package:architecture_template_v2/product/widget/button/normal_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
part 'custom_login_button_mixin.dart';

final class CustomLoginButton extends StatefulWidget {
  const CustomLoginButton({super.key, required this.onOperation});
  final AsyncValueGetter<bool> onOperation;
//bu geriye değer dödürmeyeceğin zaman kullanılır
  //final AsyncCallback onOperation;
  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton>
    with MountedMixin, _CustomLoginButtonMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isLoadingNotifier,
      builder: (context, value, child) {
        if (value) return const CircularProgressIndicator();

        return NormalButton(
          title: "Login",
          onPressed: () async {
            if (!mounted) return;
            await onPressed(context);
          },
        );
      },
    );
  }
}
