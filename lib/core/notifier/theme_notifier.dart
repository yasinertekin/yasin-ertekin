import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/storage/web_storage_service.dart';

final class ThemeNotifier extends ChangeNotifier {
  ThemeNotifier(this._storageService) {
    _isDarkMode = _storageService.getThemeMode() ?? true;
  }
  final WebStorageService _storageService;
  late bool _isDarkMode;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _storageService.saveThemeMode(isDarkMode: _isDarkMode);
    notifyListeners();
  }
}
