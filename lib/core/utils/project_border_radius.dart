import 'package:flutter/material.dart';

@immutable
final class ProjectBorderRadius extends BorderRadius {
  const ProjectBorderRadius.all(super.value) : super.all();

  static const ProjectBorderRadius allSmall = ProjectBorderRadius.all(
    RadiusSize.smallRadius,
  );
  static const ProjectBorderRadius allMedium = ProjectBorderRadius.all(
    RadiusSize.mediumRadius,
  );
  static const ProjectBorderRadius allLarge = ProjectBorderRadius.all(
    RadiusSize.largeRadius,
  );
}

enum RadiusSize {
  small(8),
  medium(16),
  large(24);

  final double value;
  const RadiusSize(this.value);

  static const Radius smallRadius = Radius.circular(8);
  static const Radius mediumRadius = Radius.circular(16);
  static const Radius largeRadius = Radius.circular(24);
}
