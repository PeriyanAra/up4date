import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:up4date/app/app_theme_mode/index.dart';

class AppThemeMode with ChangeNotifier, DiagnosticableTreeMixin {
  AppThemeMode({
    required AppThemeModeSettings appThemeModeSettings,
    ThemeMode? themeMode,
  })  : _themeMode = themeMode ?? ThemeMode.light,
        _appThemeModeSettings = appThemeModeSettings;

  ThemeMode _themeMode = ThemeMode.light;
  late final AppThemeModeSettings _appThemeModeSettings;

  ThemeMode get themeMode => _themeMode;

  void updateThemeMode(ThemeMode themeMode) {
    if (themeMode != _themeMode) {
      unawaited(
        _appThemeModeSettings.setThemeMode(themeMode),
      );
      _themeMode = themeMode;
      notifyListeners();
    }
  }
}
