import 'package:flutter_dotenv/flutter_dotenv.dart';
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
}
