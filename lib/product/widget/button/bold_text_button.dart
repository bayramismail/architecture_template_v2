// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

//Üzerine override işlemi
///BoldTextButton is elevation 20
final class BoldTextButton extends TextButton {
  BoldTextButton({required super.onPressed, required super.child, super.key})
      : super(
            style: TextButton.styleFrom(
          elevation: 20,
        ));
}
