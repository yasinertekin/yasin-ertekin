import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:yasin_ertekin_portfolio/app/themes/dark_theme.dart';
import 'package:yasin_ertekin_portfolio/app/themes/light_theme.dart';
import 'package:yasin_ertekin_portfolio/core/constants/string_constants.dart';
import 'package:yasin_ertekin_portfolio/core/notifier/language_notifier.dart';
import 'package:yasin_ertekin_portfolio/core/notifier/theme_notifier.dart';
import 'package:yasin_ertekin_portfolio/core/storage/web_storage_service.dart';
import 'package:yasin_ertekin_portfolio/core/utils/key_helper.dart';
import 'package:yasin_ertekin_portfolio/core/utils/responsive_breakpoints_utils.dart';
import 'package:yasin_ertekin_portfolio/features/home_view.dart';
import 'package:yasin_ertekin_portfolio/l10n/app_localizations.dart';
import 'package:yasin_ertekin_portfolio/l10n/l10n.dart';

@immutable
final class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final storageService = WebStorageService();
    final themeNotifier = ThemeNotifier(storageService);
    final languageNotifier = LanguageNotifier(storageService);

    return ListenableBuilder(
      listenable: themeNotifier,
      builder: (context, child) {
        return ListenableBuilder(
          listenable: languageNotifier,
          builder: (context, _) {
            return MaterialApp(
              scaffoldMessengerKey: KeyHelper.scaffoldMessengerKey,
              title: StringConstants.appName,
              debugShowCheckedModeBanner: false,
              theme: LightTheme().theme,
              darkTheme: DarkTheme().theme,
              themeMode:
                  themeNotifier.isDarkMode ? ThemeMode.dark : ThemeMode.light,
              locale: languageNotifier.locale.locale,
              supportedLocales: L10n.all,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              builder:
                  (context, child) =>
                      ResponsiveBreakpointsUtils.builder(child!),
              home: HomeView(
                themeNotifier: themeNotifier,
                languageNotifier: languageNotifier,
              ),
            );
          },
        );
      },
    );
  }
}
