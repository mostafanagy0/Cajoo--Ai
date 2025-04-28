import 'package:bloc/bloc.dart';
import 'package:cajoo/core/state%20management/cubit/app_lanuage_state.dart';
import 'package:flutter/material.dart';

class AppLanuageCubit extends Cubit<AppLanuageState> {
  AppLanuageCubit() : super(AppLanuageInitial());
  void changeLanguage(Locale locale) {
    emit(LanguageChanged(locale));
  }
}
