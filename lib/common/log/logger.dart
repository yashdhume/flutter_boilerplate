import 'package:logger/logger.dart';

Logger get logger => Log.instance;

class Log extends Logger {
  Log._()
      : super(
          printer: PrettyPrinter(printTime: true),
        );
  static final instance = Log._();
  final bool _logProviders = false;
  final bool _logRouter = false;
  static bool get logProviders => instance._logProviders;
  static bool get logRouter => instance._logRouter;
}
