import 'dart:convert';
import 'dart:isolate';

extension MapStringDynamicExt on Map<String, dynamic> {
  Future<String> get stringify async => Isolate.run(() => jsonEncode(this));
}
