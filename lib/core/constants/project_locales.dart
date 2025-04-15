import 'package:flutter/material.dart';

enum ProjectLocales {
  en('🇺🇸', Locale('en')),
  tr('🇹🇷', Locale('tr'));

  final String flag;
  final Locale locale;

  const ProjectLocales(this.flag, this.locale);
}
