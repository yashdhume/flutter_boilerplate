import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/common/log/logger.dart';

class RiverpodObserver extends ProviderObserver {
  void _log(String name, String? providerName, Type type, Object? value) {
    Log.all(
      name: name,
      data: {
        'provider': '${providerName ?? type}',
        'newValue': '$value',
      },
      showConsole: Log.logProviders,
    );
  }

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) =>
      _log(
        'Provider Add',
        provider.name,
        provider.runtimeType,
        value,
      );

  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) =>
      _log(
        'Provider Update',
        provider.name,
        provider.runtimeType,
        newValue,
      );

  @override
  void didDisposeProvider(
    ProviderBase<dynamic> provider,
    ProviderContainer container,
  ) {
    _log(
      'Provider Dispose',
      provider.name,
      provider.runtimeType,
      'disposed',
    );
    super.didDisposeProvider(provider, container);
  }
}
