import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_locales.dart';
import 'package:yasin_ertekin_portfolio/core/storage/web_storage_service.dart';

final class LanguageNotifier extends ChangeNotifier {
  LanguageNotifier(this._storageService) {
    final savedLanguage =
        _storageService.getLanguageCode() ??
        ProjectLocales.en.locale.languageCode;
    _locale = ProjectLocales.values.firstWhere(
      (element) => element.locale.languageCode == savedLanguage,
    );
  }
  final WebStorageService _storageService;
  late ProjectLocales _locale;

  ProjectLocales get locale => _locale;

  void changeLanguage() {
    final newLocale =
        _locale.locale.languageCode == ProjectLocales.en.locale.languageCode
            ? ProjectLocales.tr
            : ProjectLocales.en;
    _locale = newLocale;
    _storageService.saveLanguageCode(newLocale);
    notifyListeners();
  }
}
