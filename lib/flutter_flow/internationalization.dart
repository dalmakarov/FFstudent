import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ru', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ruText = '',
    String? enText = '',
  }) =>
      [ruText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Onboarding
  {
    'zob36g8j': {
      'ru': 'Все ваши любимые повара',
      'en': 'All your favorite chefs',
    },
    '2bb74y5s': {
      'ru': 'Заказывай у лучших местных поваров\nс легкостью и доставкой',
      'en': 'Order from the best local chefs\nwith ease and delivery',
    },
    'f80q0cxe': {
      'ru': 'Непревзойденная надежность',
      'en': 'Unrivaled reliability',
    },
    'ud76j13g': {
      'ru':
          'Испытайте душевное спокойствие, \nотслеживая свой заказ через таймер',
      'en': 'Experience peace of mind by tracking your order via a timer',
    },
    'b9qby6kh': {
      'ru': 'Поддержка 24/7 для тебя',
      'en': '24/7 support for you',
    },
    '3q4pthh8': {
      'ru': 'Что-то случилось? Мы решим любую проблему с заказом',
      'en': 'Something happened? We will solve any problem with your order',
    },
    'qdhhs2ta': {
      'ru': 'Найдите здесь свою комфортную еду',
      'en': 'Find your comfort food here',
    },
    '6sadpkjs': {
      'ru':
          'Наслаждайтесь быстрой и бесперебойной доставкой еды прямо к вашему порогу',
      'en': 'Enjoy fast and seamless food delivery right to your doorstep',
    },
    'qhmtfalt': {
      'ru': 'Домой',
      'en': 'Home',
    },
  },
  // SelectCityPage
  {
    'llbkam00': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '01iclt4b': {
      'ru': '',
      'en': '',
    },
    '1ppky84a': {
      'ru': '',
      'en': '',
    },
    'cosptiat': {
      'ru': '',
      'en': '',
    },
    '7jq6hb4s': {
      'ru': '',
      'en': '',
    },
    'nu1fpyep': {
      'ru': '',
      'en': '',
    },
    'z75ydt37': {
      'ru': '',
      'en': '',
    },
    'b9z3n4ng': {
      'ru': '',
      'en': '',
    },
    'vyl8p5c8': {
      'ru': '',
      'en': '',
    },
    'kntlmmd4': {
      'ru': '',
      'en': '',
    },
    '1s8168ko': {
      'ru': '',
      'en': '',
    },
    '8meqdcje': {
      'ru': '',
      'en': '',
    },
    'sk0etipb': {
      'ru': '',
      'en': '',
    },
    'wl0r489y': {
      'ru': '',
      'en': '',
    },
    'yjfiya7s': {
      'ru': '',
      'en': '',
    },
    't7ffy8wx': {
      'ru': '',
      'en': '',
    },
    'moujzsl6': {
      'ru': '',
      'en': '',
    },
    'fs2hjfca': {
      'ru': '',
      'en': '',
    },
    '461ud3ql': {
      'ru': '',
      'en': '',
    },
    'n3k7xg9y': {
      'ru': '',
      'en': '',
    },
    'gfxetkox': {
      'ru': '',
      'en': '',
    },
    '2jg45ps4': {
      'ru': '',
      'en': '',
    },
    'rjg4c7n7': {
      'ru': '',
      'en': '',
    },
    '0n1czp95': {
      'ru': '',
      'en': '',
    },
    '67ypcerr': {
      'ru': '',
      'en': '',
    },
    'b4ow796f': {
      'ru': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
