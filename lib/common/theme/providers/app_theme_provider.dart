import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/common/cache/extensions/cache_theme_ext.dart';
import 'package:frontend/common/cache/service/app_cache.dart';

final themeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (_) => ThemeModeNotifier(),
);

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeMode theme = ThemeMode.system;

  ThemeModeNotifier() : super(ThemeMode.system) {
    getTheme();
  }

  Future<void> getTheme() async {
    state = await AppCache.instance.getTheme();
  }

  void setTheme(ThemeMode theme) {
    state = theme;
    AppCache.instance.setTheme(theme);
  }
}
