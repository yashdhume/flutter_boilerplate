import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/authentication/logic/providers/auth_providers.dart';
import 'package:frontend/app/authentication/logic/service/token_service.dart';
import 'package:frontend/common/utils/language.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async => Clipboard.setData(
              ClipboardData(text: (await TokenService.getToken()) ?? ''),
            ),
            child: const Text('Get Token'),
          ),
          ElevatedButton(
            onPressed: ref.read(authServiceProvider).signOut,
            child: Text(Language.text.signOut),
          ),
        ],
      ),
    );
  }
}
