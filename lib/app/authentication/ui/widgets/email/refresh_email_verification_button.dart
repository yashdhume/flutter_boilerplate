import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/auth_providers.dart';
import 'package:frontend/common/ui/widgets/buttons/big_button.dart';

class RefreshEmailVerificationButton extends ConsumerStatefulWidget {
  const RefreshEmailVerificationButton({super.key});

  @override
  ConsumerState<RefreshEmailVerificationButton> createState() =>
      _RefreshEmailVerificationButtonState();
}

class _RefreshEmailVerificationButtonState
    extends ConsumerState<RefreshEmailVerificationButton>
    with WidgetsBindingObserver {
  late Timer timer;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _checkVerification();
  }

  Future<void> _checkVerification() async {
    await ref.read(authServiceProvider).reload();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    timer = Timer.periodic(
      const Duration(seconds: 15),
      (Timer t) => _checkVerification(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BigButton(text: 'Refresh', onPressed: _checkVerification);
  }

  @override
  void dispose() {
    timer.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
