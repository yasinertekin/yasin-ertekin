import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/app/themes/app_theme.dart';
import 'package:yasin_ertekin_portfolio/app/themes/project_color_scheme.dart';

@immutable
final class LightTheme implements AppTheme {
  @override
  ThemeData get theme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ProjectColorScheme.lightScheme,
  );
}
