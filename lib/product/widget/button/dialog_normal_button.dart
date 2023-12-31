// ignore_for_file: public_member_api_docs

import 'package:architecture_template_v2/product/widget/button/normal_button.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class DialogNormalButton extends StatelessWidget {
  const DialogNormalButton({super.key, required this.onComplate});
  final ValueChanged<bool?> onComplate;
  @override
  Widget build(BuildContext context) {
    return NormalButton(
      title: "Dialog Normal Button",
      onPressed: () async {
        final response =
            await SuccessDialog.show(title: "title", context: context);
        onComplate.call(response);
      },
    );
  }
}
