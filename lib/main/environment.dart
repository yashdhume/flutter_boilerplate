import 'dart:io';

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
}

extension _EnvProperties on Env {
  static const _appNames = {
    Env.local: 'Frontend Local',
    Env.dev: 'Frontend Dev',
    Env.prod: 'Frontend',
  };

  static const _serverUrls = {
    Env.local: 'http://192.168.1.164:4000/api',
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
