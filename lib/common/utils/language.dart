import 'dart:ui';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Language {
  factory Language() {
    //ignore: join_return_with_assignment
    _instance = Language._internal();
    return _instance;
  }
  Language._internal();
  static late Language _instance;
  static Language get instance => _instance;
  static late AppLocalizations _appLocalizations;
  static AppLocalizations get text => _appLocalizations;
  Future<void> init(String lang) async {
    _appLocalizations = await AppLocalizations.delegate.load(Locale(lang));
  }
}
