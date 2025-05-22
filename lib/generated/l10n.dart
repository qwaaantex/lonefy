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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign`
  String get Register {
    return Intl.message('Sign', name: 'Register', desc: '', args: []);
  }

  /// `Email`
  String get Email {
    return Intl.message('Email', name: 'Email', desc: '', args: []);
  }

  /// `Password`
  String get Password {
    return Intl.message('Password', name: 'Password', desc: '', args: []);
  }

  /// `Forgot password?`
  String get ForgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an account?`
  String get HaveAnyAccount {
    return Intl.message(
      'Do you have an account?',
      name: 'HaveAnyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get SignIn {
    return Intl.message('Or', name: 'SignIn', desc: '', args: []);
  }

  /// `Choose language`
  String get ChooseLanguage {
    return Intl.message(
      'Choose language',
      name: 'ChooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message('Login', name: 'Login', desc: '', args: []);
  }

  /// `Do you don't have an account?`
  String get DontHaveAnyAccount {
    return Intl.message(
      'Do you don\'t have an account?',
      name: 'DontHaveAnyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty`
  String get PasswordIsNotEmpty {
    return Intl.message(
      'Password cannot be empty',
      name: 'PasswordIsNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password must be longer`
  String get PasswordMustBeLonger {
    return Intl.message(
      'Password must be longer',
      name: 'PasswordMustBeLonger',
      desc: '',
      args: [],
    );
  }

  /// `Email cannot be empty`
  String get EmailIsNotEmpty {
    return Intl.message(
      'Email cannot be empty',
      name: 'EmailIsNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Email must contain «@»`
  String get EmailMustContain {
    return Intl.message(
      'Email must contain «@»',
      name: 'EmailMustContain',
      desc: '',
      args: [],
    );
  }

  /// `Email must be longer`
  String get EmailMustBeLonger {
    return Intl.message(
      'Email must be longer',
      name: 'EmailMustBeLonger',
      desc: '',
      args: [],
    );
  }

  /// `Hey`
  String get UserHeyAppBar {
    return Intl.message('Hey', name: 'UserHeyAppBar', desc: '', args: []);
  }

  /// `Main`
  String get Main {
    return Intl.message('Main', name: 'Main', desc: '', args: []);
  }

  /// `Songs`
  String get Songs {
    return Intl.message('Songs', name: 'Songs', desc: '', args: []);
  }

  /// `Profile`
  String get Profile {
    return Intl.message('Profile', name: 'Profile', desc: '', args: []);
  }

  /// `Settings`
  String get Settings {
    return Intl.message('Settings', name: 'Settings', desc: '', args: []);
  }

  /// `Logout`
  String get Logout {
    return Intl.message('Logout', name: 'Logout', desc: '', args: []);
  }

  /// `Please, security, verify your account`
  String get SecurityAccount {
    return Intl.message(
      'Please, security, verify your account',
      name: 'SecurityAccount',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get ResetPassword {
    return Intl.message(
      'Reset password',
      name: 'ResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Have any questions?`
  String get HaveAnyQuestions {
    return Intl.message(
      'Have any questions?',
      name: 'HaveAnyQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get Contact {
    return Intl.message('Contact', name: 'Contact', desc: '', args: []);
  }

  /// `Tell us about yourself...`
  String get TellUsAboutYourself {
    return Intl.message(
      'Tell us about yourself...',
      name: 'TellUsAboutYourself',
      desc: '',
      args: [],
    );
  }

  /// `Share with others`
  String get ShareWithOthers {
    return Intl.message(
      'Share with others',
      name: 'ShareWithOthers',
      desc: '',
      args: [],
    );
  }

  /// `Playlists`
  String get Playlists {
    return Intl.message('Playlists', name: 'Playlists', desc: '', args: []);
  }

  /// `Performers`
  String get Performers {
    return Intl.message('Performers', name: 'Performers', desc: '', args: []);
  }

  /// `Singers`
  String get Singers {
    return Intl.message('Singers', name: 'Singers', desc: '', args: []);
  }

  /// `Select \nstatus`
  String get SelectStatus {
    return Intl.message(
      'Select \nstatus',
      name: 'SelectStatus',
      desc: '',
      args: [],
    );
  }

  /// `Reputation`
  String get Reputation {
    return Intl.message('Reputation', name: 'Reputation', desc: '', args: []);
  }

  /// `Add image`
  String get AddBackgroundImage {
    return Intl.message(
      'Add image',
      name: 'AddBackgroundImage',
      desc: '',
      args: [],
    );
  }

  /// `Listening`
  String get Listening {
    return Intl.message('Listening', name: 'Listening', desc: '', args: []);
  }

  /// `Resting`
  String get Resting {
    return Intl.message('Resting', name: 'Resting', desc: '', args: []);
  }

  /// `Playing`
  String get Playing {
    return Intl.message('Playing', name: 'Playing', desc: '', args: []);
  }

  /// `Customize`
  String get Customize {
    return Intl.message('Customize', name: 'Customize', desc: '', args: []);
  }

  /// `Hi`
  String get ShareText {
    return Intl.message('Hi', name: 'ShareText', desc: '', args: []);
  }

  /// `Error`
  String get Error {
    return Intl.message('Error', name: 'Error', desc: '', args: []);
  }

  /// `Add links`
  String get AddLinks {
    return Intl.message('Add links', name: 'AddLinks', desc: '', args: []);
  }

  /// `Select theme`
  String get SelectTheme {
    return Intl.message(
      'Select theme',
      name: 'SelectTheme',
      desc: '',
      args: [],
    );
  }

  /// `Receive notifications`
  String get ReceiveNotifications {
    return Intl.message(
      'Receive notifications',
      name: 'ReceiveNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Clear cache`
  String get ClearCache {
    return Intl.message('Clear cache', name: 'ClearCache', desc: '', args: []);
  }

  /// `Ask questions`
  String get AskQuestions {
    return Intl.message(
      'Ask questions',
      name: 'AskQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Confidentiality`
  String get Confidentiality {
    return Intl.message(
      'Confidentiality',
      name: 'Confidentiality',
      desc: '',
      args: [],
    );
  }

  /// `Add path to save`
  String get AddPathToSave {
    return Intl.message(
      'Add path to save',
      name: 'AddPathToSave',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get Later {
    return Intl.message('Later', name: 'Later', desc: '', args: []);
  }

  /// `Customization songs`
  String get CustomizationSongs {
    return Intl.message(
      'Customization songs',
      name: 'CustomizationSongs',
      desc: '',
      args: [],
    );
  }

  /// `Configure consumption`
  String get ConfigureConsumption {
    return Intl.message(
      'Configure consumption',
      name: 'ConfigureConsumption',
      desc: '',
      args: [],
    );
  }

  /// `Volume`
  String get SelectVolume {
    return Intl.message('Volume', name: 'SelectVolume', desc: '', args: []);
  }

  /// `Usage policy`
  String get UsagePolicy {
    return Intl.message(
      'Usage policy',
      name: 'UsagePolicy',
      desc: '',
      args: [],
    );
  }

  /// `Noise reduction`
  String get NoiseReduction {
    return Intl.message(
      'Noise reduction',
      name: 'NoiseReduction',
      desc: '',
      args: [],
    );
  }

  /// `Report a bug`
  String get ReportABug {
    return Intl.message('Report a bug', name: 'ReportABug', desc: '', args: []);
  }

  /// `Your songs`
  String get ThisIsYourSongs {
    return Intl.message(
      'Your songs',
      name: 'ThisIsYourSongs',
      desc: '',
      args: [],
    );
  }

  /// `Import songs`
  String get ImportSongs {
    return Intl.message(
      'Import songs',
      name: 'ImportSongs',
      desc: '',
      args: [],
    );
  }

  /// `Search songs`
  String get SearchSongs {
    return Intl.message(
      'Search songs',
      name: 'SearchSongs',
      desc: '',
      args: [],
    );
  }

  /// `Rock`
  String get Rock {
    return Intl.message('Rock', name: 'Rock', desc: '', args: []);
  }

  /// `Hip-hop`
  String get HipHop {
    return Intl.message('Hip-hop', name: 'HipHop', desc: '', args: []);
  }

  /// `Fonk`
  String get Fonk {
    return Intl.message('Fonk', name: 'Fonk', desc: '', args: []);
  }

  /// `Funk`
  String get Funk {
    return Intl.message('Funk', name: 'Funk', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'ru'),
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
