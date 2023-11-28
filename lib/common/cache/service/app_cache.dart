import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:frontend/common/cache/interface/i_app_cache.dart';

class AppCache implements IAppCache {
  AppCache._internal();

  static final AppCache _instance = AppCache._internal();

  static AppCache get instance => _instance;

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  @override
  Future<void> write({required String key, required Object value}) async {
    await _storage.write(key: key, value: jsonEncode(value));
  }

  @override
  Future<Object?> read(String key) async {
    final data = await _storage.read(key: key);

    return data != null ? jsonDecode(data) : data;
  }

  @override
  Future<Map<String, dynamic>> readAll() async {
    return _storage.readAll();
  }

  @override
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  @override
  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }

  @override
  Future<bool> containsKey({required String key}) async {
    return _storage.containsKey(key: key);
  }
}
