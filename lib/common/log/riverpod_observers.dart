import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/common/log/logger.dart';

class RiverpodObserver extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    logger.d(
      {
        'provider': '${provider.name ?? provider.runtimeType}',
        'newValue': '$value',
      },
    );
  }

  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.d(
      {
        'provider': '${provider.name ?? provider.runtimeType}',
        'newValue': '$newValue',
      },
    );
  }

  @override
  void didDisposeProvider(
      ProviderBase<dynamic> provider, ProviderContainer container,) {
    logger.d(
      {
        'provider': '${provider.name ?? provider.runtimeType}',
        'newValue': 'disposed',
      },
    );
    super.didDisposeProvider(provider, container);
  }
}
