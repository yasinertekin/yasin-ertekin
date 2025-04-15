import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Yasin Ertekin'**
  String get appTitle;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Yasin Ertekin'**
  String get name;

  /// No description provided for @profession.
  ///
  /// In en, this message translates to:
  /// **'Flutter Developer & Mobile Engineer'**
  String get profession;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'A mobile application developer specialized in Flutter, currently learning Swift.'**
  String get about;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get aboutTitle;

  /// No description provided for @aboutContent.
  ///
  /// In en, this message translates to:
  /// **'I\'m a passionate mobile app developer with strong experience in building high-quality applications using Flutter. I\'m currently expanding my skill set by learning Swift. I enjoy designing intuitive user interfaces and solving complex technical challenges.'**
  String get aboutContent;

  /// No description provided for @projectsTitle.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projectsTitle;

  /// No description provided for @contactTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contactTitle;

  /// No description provided for @themeSwitch.
  ///
  /// In en, this message translates to:
  /// **'Switch Theme'**
  String get themeSwitch;

  /// No description provided for @languageSwitch.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get languageSwitch;

  /// No description provided for @downloadCV.
  ///
  /// In en, this message translates to:
  /// **'Download CV'**
  String get downloadCV;

  /// No description provided for @viewGitHub.
  ///
  /// In en, this message translates to:
  /// **'View on GitHub'**
  String get viewGitHub;

  /// No description provided for @viewAppStore.
  ///
  /// In en, this message translates to:
  /// **'View on App Store'**
  String get viewAppStore;

  /// No description provided for @viewPlayStore.
  ///
  /// In en, this message translates to:
  /// **'View on Play Store'**
  String get viewPlayStore;

  /// No description provided for @footerRights.
  ///
  /// In en, this message translates to:
  /// **'All rights reserved.'**
  String get footerRights;

  /// No description provided for @builtWithFlutter.
  ///
  /// In en, this message translates to:
  /// **'Built with Flutter'**
  String get builtWithFlutter;

  /// No description provided for @samaticaTitle.
  ///
  /// In en, this message translates to:
  /// **'Samatica AI: Your Smart Assistant'**
  String get samaticaTitle;

  /// No description provided for @samaticaDescription.
  ///
  /// In en, this message translates to:
  /// **'Samatica AI is a next-generation assistant app that empowers users to chat with advanced AI models like ChatGPT, Gemini, and Claude, analyze documents, generate visuals, and perform smart web searches. It also features AI personas such as psychologists and dietitians for personalized guidance. The app is built entirely with Flutter and Firebase, and uses RevenueCat for subscription management.'**
  String get samaticaDescription;

  /// No description provided for @moonxTitle.
  ///
  /// In en, this message translates to:
  /// **'Moonx: Horoscope & Meditation'**
  String get moonxTitle;

  /// No description provided for @moonxDescription.
  ///
  /// In en, this message translates to:
  /// **'Moonx is a Flutter-based mobile app that delivers daily horoscopes, lunar guidance, weather forecasts, and calming meditation music. It features seamless API integrations, Bloc-based state management, and a refined user experience.'**
  String get moonxDescription;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'tr': return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
