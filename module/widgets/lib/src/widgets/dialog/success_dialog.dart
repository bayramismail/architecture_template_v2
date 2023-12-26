// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

///Show a dialog for success
class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    super.key,
    required this.title,
  });

  ///Title for the dialog
  final String title;

  /// Show the dialog for success
  static Future<bool?> show({
    required BuildContext context,
    required String title,
  }) async {
    await DialogBase.show<bool>(
      context: context,
      builder: (context) => SuccessDialog(
        title: title,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
