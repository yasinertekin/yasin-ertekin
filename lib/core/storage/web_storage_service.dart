import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_locales.dart';
import 'package:yasin_ertekin_portfolio/core/storage/i_storage_service.dart';

/// Web platform implementation of storage service
@immutable
final class WebStorageService implements IStorageService {
  static const String _themeKey = 'theme_mode';
  static const String _languageKey = 'language_code';

  @override
  void saveThemeMode({required bool isDarkMode}) {
    window.localStorage[_themeKey] = isDarkMode.toString();
  }

  @override
  bool? getThemeMode() {
    final themeMode = window.localStorage[_themeKey];
    if (themeMode == null) return null;
    return themeMode.toLowerCase() == 'true';
  }

  @override
  void saveLanguageCode(ProjectLocales languageCode) {
    window.localStorage[_languageKey] = languageCode.locale.languageCode;
  }

  @override
  String? getLanguageCode() {
    return window.localStorage[_languageKey];
  }
}
