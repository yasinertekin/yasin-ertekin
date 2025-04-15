import 'package:flutter/material.dart';
import 'package:yasin_ertekin_portfolio/core/constants/project_icons.dart';
import 'package:yasin_ertekin_portfolio/core/notifier/language_notifier.dart';
import 'package:yasin_ertekin_portfolio/core/notifier/theme_notifier.dart';
import 'package:yasin_ertekin_portfolio/l10n/app_localizations.dart';

@immutable
final class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    required this.themeNotifier,
    required this.languageNotifier,
    super.key,
  });

  final ThemeNotifier themeNotifier;
  final LanguageNotifier languageNotifier;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      actions: [
        _ChangeThemeButton._(themeNotifier: themeNotifier),
        _ChangeLanguageButton._(languageNotifier: languageNotifier),
      ],
    );
  }
}

@immutable
final class _ChangeThemeButton extends StatelessWidget {
  const _ChangeThemeButton._({required this.themeNotifier});

  final ThemeNotifier themeNotifier;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return IconButton(
      icon: Icon(
        themeNotifier.isDarkMode ? ProjectIcons.light : ProjectIcons.dark,
      ),
      onPressed: themeNotifier.toggleTheme,
      tooltip: localizations.themeSwitch,
    );
  }
}

@immutable
final class _ChangeLanguageButton extends StatelessWidget {
  const _ChangeLanguageButton._({required this.languageNotifier});

  final LanguageNotifier languageNotifier;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return IconButton(
      icon: Text(languageNotifier.locale.flag),
      onPressed: languageNotifier.changeLanguage,
      tooltip: localizations.languageSwitch,
    );
  }
}
