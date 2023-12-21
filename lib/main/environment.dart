import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:frontend/main/enums/env.dart';
import 'package:frontend/main/enums/os.dart';
import 'package:package_info_plus/package_info_plus.dart';

class EnvConfig {
  final Env _env;
  final OS _platform;
  late final PackageInfo _appInfo;
  static late EnvConfig _instance;

  factory EnvConfig(Env env) {
    late OS os;
    if (Platform.isAndroid) {
      os = OS.android;
    } else if (Platform.isIOS) {
      os = OS.ios;
    } else {
      throw Exception('This platform is not supported');
    }
    //ignore: join_return_with_assignment
    _instance = EnvConfig._internal(env, os);
    return _instance;
  }

  EnvConfig._internal(this._env, this._platform);

  Future<void> init() async {
    await dotenv.load();
    _appInfo = await PackageInfo.fromPlatform();
  }

  static EnvConfig get instance {
    return _instance;
  }

  static String get appName => _instance._env._appName;

  static String get envName => _instance._env.name;

  static OS get os => _instance._platform;

  static String get serverUrl => _instance._env._serverUrl;

  static Env get environment => _instance._env;

  static bool get isLocal => _instance._env == Env.local;

  static bool get isDev => _instance._env == Env.dev;

  static bool get isProduction => _instance._env == Env.prod;

  static String get versionNumber => _instance._appInfo.version;

  static String get buildNumber => _instance._appInfo.version;

  static String get fullVersionNumber => '$versionNumber+$buildNumber';

  static String get bundleId => _instance._env._bundleId;
  static String get firebaseApiKey {
    switch (_instance._platform) {
      case OS.android:
        return dotenv.env['FIREBASE_API_KEY_ANDROID']!;
      case OS.ios:
        return dotenv.env['FIREBASE_API_KEY_IOS']!;
    }
  }

  static String get firebaseProjectId => dotenv.env['FIREBASE_PROJECT_ID']!;
  static String get firebaseMessagingSenderId =>
      dotenv.env['FIREBASE_MESSAGING_SENDER_ID']!;
  static String get firebaseAppId {
    switch (_instance._platform) {
      case OS.android:
        return dotenv.env['FIREBASE_APP_ID_ANDROID']!;
      case OS.ios:
        return dotenv.env['FIREBASE_APP_ID_IOS']!;
    }
  }

  static String get firebaseDatabaseUrl => dotenv.env['FIREBASE_DATABASE_URL']!;
  static String get firebaseStorageBucket =>
      dotenv.env['FIREBASE_STORAGE_BUCKET']!;
  static String get firebaseAndroidClientId =>
      dotenv.env['FIREBASE_ANDROID_CLIENT_ID']!;
  static String get firebaseIOSClientId =>
      dotenv.env['FIREBASE_IOS_CLIENT_ID']!;
}

extension _EnvProperties on Env {
  static const _appNames = {
    Env.local: 'Frontend Local',
    Env.dev: 'Frontend Dev',
    Env.prod: 'Frontend',
  };

  static final _serverUrls = {
    Env.local: dotenv.env['LOCAL_SERVER_URL']!,
    Env.dev: 'https://api.somedomain.com',
    Env.prod: 'https://api.somedomain.com',
  };
  static const _bundleIds = {
    Env.local: 'com.frontend.local',
    Env.dev: 'com.frontend.dev',
    Env.prod: 'com.frontend.app',
  };

  String get _appName => _appNames[this]!;

  String get _serverUrl => _serverUrls[this]!;

  String get _bundleId => _bundleIds[this]!;
}
