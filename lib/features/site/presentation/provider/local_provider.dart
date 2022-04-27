import 'package:flutter/material.dart';

class LocalProvider extends ChangeNotifier {
  Locale _locale;

  LocalProvider(this._locale);

  Locale get locale => _locale;

  set locale(Locale value) {
    _locale = value;
    notifyListeners();
  }
}
