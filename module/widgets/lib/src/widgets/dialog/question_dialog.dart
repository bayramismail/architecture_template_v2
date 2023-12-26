// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

/// User question answer
class QuestionAnswer {
  QuestionAnswer({required this.response});

  /// Answer text
  final String response;
}

///Show a dialog for Question
class QuestionDialog extends StatefulWidget {
  const QuestionDialog({
    super.key,
    required this.title,
  });

  ///Title for the dialog
  final String title;

  /// Show the dialog for Question
  static Future<QuestionAnswer?> show({
    required BuildContext context,
    required String title,
  }) {
    return showDialog<QuestionAnswer>(
      context: context,
      builder: (context) => QuestionDialog(
        title: title,
      ),
    );
  }

  @override
  State<QuestionDialog> createState() => _QuestionDialogState();
}

class _QuestionDialogState extends State<QuestionDialog> {
  String _response = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      content: TextField(
        onChanged: (value) => _response = value,
      ),
      actions: [
        IconButton(
          onPressed: () {
            if (_response.isEmpty) {
              Navigator.of(context).pop(null);
            }
            Navigator.of(context).pop(QuestionAnswer(response: _response));
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
