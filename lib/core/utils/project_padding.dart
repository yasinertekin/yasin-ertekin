import 'package:flutter/material.dart';

@immutable
final class ProjectPadding extends EdgeInsets {
  const ProjectPadding.all(super.padding) : super.all();
  const ProjectPadding.horizontal(double value)
    : super.symmetric(horizontal: value);
  const ProjectPadding.vertical(double value)
    : super.symmetric(vertical: value);
  const ProjectPadding.onlyTop(double value) : super.only(top: value);

  /// Small 8
  static const ProjectPadding allSmall = ProjectPadding.all(8);

  /// Medium 16
  static const ProjectPadding allMedium = ProjectPadding.all(16);

  /// Large 24
  static const ProjectPadding allLarge = ProjectPadding.all(24);

  /// XLarge 32
  static const ProjectPadding allXLarge = ProjectPadding.all(32);

  /// XXLarge 40
  static const ProjectPadding allXXLarge = ProjectPadding.all(40);

  /// XXXLarge 48
  static const ProjectPadding allXXXLarge = ProjectPadding.all(48);

  /// Small 8
  static const ProjectPadding horizontalSmall = ProjectPadding.horizontal(8);

  /// Medium 16
  static const ProjectPadding horizontalMedium = ProjectPadding.horizontal(16);

  /// Large 24
  static const ProjectPadding horizontalLarge = ProjectPadding.horizontal(24);
  static const ProjectPadding horizontalXLarge = ProjectPadding.horizontal(32);

  /// XXLarge 40
  static const ProjectPadding horizontalXXLarge = ProjectPadding.horizontal(40);
  static const ProjectPadding horizontalXXXLarge = ProjectPadding.horizontal(
    48,
  );

  /// Small 8
  static const ProjectPadding verticalSmall = ProjectPadding.vertical(8);

  /// Medium 16
  static const ProjectPadding verticalMedium = ProjectPadding.vertical(16);

  /// Large 24
  static const ProjectPadding verticalLarge = ProjectPadding.vertical(24);

  /// XLarge 32
  static const ProjectPadding verticalXLarge = ProjectPadding.vertical(32);

  /// XXLarge 40
  static const ProjectPadding verticalXXLarge = ProjectPadding.vertical(40);

  static const ProjectPadding onlyTopSmall = ProjectPadding.onlyTop(8);
  static const ProjectPadding onlyTopMedium = ProjectPadding.onlyTop(16);
  static const ProjectPadding onlyTopLarge = ProjectPadding.onlyTop(24);
  static const ProjectPadding onlyTopXLarge = ProjectPadding.onlyTop(32);
  static const ProjectPadding onlyTopXXLarge = ProjectPadding.onlyTop(40);
  static const ProjectPadding onlyTopXXXLarge = ProjectPadding.onlyTop(48);
}
