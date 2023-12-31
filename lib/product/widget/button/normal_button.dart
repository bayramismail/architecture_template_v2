// ignore_for_file: public_member_api_docs

import 'package:architecture_template_v2/product/utility/constans/project_radius.dart';
import 'package:flutter/material.dart';

///Radius is 20
final class NormalButton extends StatelessWidget {
  const NormalButton({super.key, required this.title, required this.onPressed});

  /// title text
  final String title;

  /// button onPressed
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      /// todo:
      radius: ProjectRadius.normal.value,
      onTap: () {},
      child: Text(title),
    );
  }
}
