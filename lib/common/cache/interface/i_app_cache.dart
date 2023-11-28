abstract class IAppCache {
  Future<void> write({required String key, required Object value});

  Future<Object?> read(String key);

  Future<Map<String, dynamic>> readAll();

  Future<void> delete(String key);

  Future<void> deleteAll();

  Future<bool> containsKey({required String key});
}
