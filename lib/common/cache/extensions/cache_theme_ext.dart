import 'package:flutter/material.dart';
import 'package:frontend/common/cache/constants/cache_keys.dart';
import 'package:frontend/common/cache/service/app_cache.dart';

extension CacheThemeExt on AppCache {
  Future<void> setTheme(ThemeMode theme) async {
    await write(key: CacheKeys.theme, value: theme.name);
  }

  Future<ThemeMode> getTheme() async {
    final value = await read(CacheKeys.theme);
    switch (value) {
      case 'system':
        return ThemeMode.system;
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
