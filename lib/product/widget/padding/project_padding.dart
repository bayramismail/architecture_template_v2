import 'package:flutter/material.dart';

//inheritance kullanarak kendi padding lerimizi yaptık
///Project general padding items
final class ProjectPadding extends EdgeInsets {
  const ProjectPadding._() : super.all(0);

  ///All Padding
  ///

  /// [ProjectPadding.allSmall] is 8
  ProjectPadding.allSmall() : super.all(8);

  /// [ProjectPadding.allMedium] is 16
  ProjectPadding.allMedium() : super.all(16);

  /// [ProjectPadding.allLarge] is 32
  ProjectPadding.allLarge() : super.all(32);

  /// Symmetric
  ///  Only left,right,bottom
}
