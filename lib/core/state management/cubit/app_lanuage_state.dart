import 'package:flutter/material.dart';

sealed class AppLanuageState {}

final class AppLanuageInitial extends AppLanuageState {}

class LanguageChanged extends AppLanuageState {
  final Locale locale;

  LanguageChanged(this.locale);
}
