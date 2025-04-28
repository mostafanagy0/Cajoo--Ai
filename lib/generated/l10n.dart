// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Fast & Smart Diagnosis`
  String get onbordingtitel1 {
    return Intl.message(
      'Fast & Smart Diagnosis',
      name: 'onbordingtitel1',
      desc: '',
      args: [],
    );
  }

  /// `Snap a photo of your cashew plant, and let AI instantly detect the problem.`
  String get onbordingdescription1 {
    return Intl.message(
      'Snap a photo of your cashew plant, and let AI instantly detect the problem.',
      name: 'onbordingdescription1',
      desc: '',
      args: [],
    );
  }

  /// `Know the Disease & Fix It`
  String get onbordingtitel2 {
    return Intl.message(
      'Know the Disease & Fix It',
      name: 'onbordingtitel2',
      desc: '',
      args: [],
    );
  }

  /// `Get the disease name, causes, and the best solution—all in one tap.`
  String get onbordingdescription2 {
    return Intl.message(
      'Get the disease name, causes, and the best solution—all in one tap.',
      name: 'onbordingdescription2',
      desc: '',
      args: [],
    );
  }

  /// `Protect Your Farm with Ease`
  String get onbordingtitel3 {
    return Intl.message(
      'Protect Your Farm with Ease',
      name: 'onbordingtitel3',
      desc: '',
      args: [],
    );
  }

  /// `Receive timely alerts and personalized recommendations to safeguard your farm.`
  String get onbordingdescription3 {
    return Intl.message(
      'Receive timely alerts and personalized recommendations to safeguard your farm.',
      name: 'onbordingdescription3',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get Skip {
    return Intl.message(
      'Skip',
      name: 'Skip',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get MyProfile {
    return Intl.message(
      'My Profile',
      name: 'MyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get EditProfile {
    return Intl.message(
      'Edit Profile',
      name: 'EditProfile',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get History {
    return Intl.message(
      'History',
      name: 'History',
      desc: '',
      args: [],
    );
  }

  /// `Help & support`
  String get Helpsupport {
    return Intl.message(
      'Help & support',
      name: 'Helpsupport',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get Logout {
    return Intl.message(
      'Logout',
      name: 'Logout',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Deleting Your Account Is Done Successfully..`
  String get DeletingAccount {
    return Intl.message(
      'Deleting Your Account Is Done Successfully..',
      name: 'DeletingAccount',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.`
  String get supportDescription {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      name: 'supportDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
