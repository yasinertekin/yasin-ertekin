import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/app/themes/app_theme.dart';
import 'package:yasin_ertekin_portfolio/app/themes/project_color_scheme.dart';

@immutable
final class DarkTheme implements AppTheme {
  @override
  ThemeData get theme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ProjectColorScheme.darkScheme,
  );
}
