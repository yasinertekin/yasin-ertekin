import 'package:flutter/foundation.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_locales.dart';

/// Abstract interface for storage operations
@immutable
abstract interface class IStorageService {
  /// Save theme mode to storage
  void saveThemeMode({required bool isDarkMode});

  /// Get theme mode from storage
  bool? getThemeMode();

  /// Save language code to storage
  void saveLanguageCode(ProjectLocales languageCode);

  /// Get language code from storage
  String? getLanguageCode();
}
