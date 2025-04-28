import 'package:flutter/material.dart';

class AppLanguageEvent {}

class ChangeLanguage extends AppLanguageEvent {
  final Locale locale;
  ChangeLanguage(this.locale);
}
