import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:frontend/common/extensions/map.dart';
import 'package:frontend/common/log/analytics.dart';
import 'package:frontend/common/log/crashlytics.dart';
import 'package:logger/logger.dart';

Logger get logger => Log.instance;

class Log extends Logger {
  Log._()
      : super(
          printer: PrettyPrinter(printTime: true),
        );
  static final instance = Log._();
  static bool get logProviders => dotenv.env['LOG_PROVIDERS'] == 'true';
  static bool get logRouter => dotenv.env['LOG_ROUTER'] == 'true';
  static Future<void> all({
    required String name,
    required Map<String, dynamic> data,
    bool logLocal = true,
  }) async {
    Crashlytics.log(await data.stringify);
    Analytics.log(logName: name, data: data);
    if (logLocal) {
      logger.d(data);
    }
  }
}
