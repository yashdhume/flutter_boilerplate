import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:frontend/common/enums/print_color.dart';
import 'package:frontend/common/enums/print_type.dart';
import 'package:frontend/common/extensions/map.dart';
import 'package:frontend/common/log/analytics.dart';
import 'package:frontend/common/log/crashlytics.dart';
import 'package:logger/logger.dart';

class Log {
  static late Log _instance;
  static late Logger pretty;

  factory Log() {
    //ignore: join_return_with_assignment
    _instance = Log._internal();
    return _instance;
  }
  Log._internal();
  void init() {
    pretty = Logger(
      printer: PrettyPrinter(printTime: true),
    );
  }

  static Log get instance => _instance;
  static bool get logProviders => dotenv.env['LOG_PROVIDERS'] == 'true';
  static bool get logRouter => dotenv.env['LOG_ROUTER'] == 'true';
  static bool get logConsole =>
      dotenv.env['LOG_CONSOLE'] == 'true' && kDebugMode;
  static Future<void> all({
    required String name,
    Map<String, dynamic>? data,
    Level level = Level.debug,
    bool? showConsole,
  }) async {
    data ??= {};
    showConsole ??= logConsole;
    Crashlytics.log(await data.stringify);
    Analytics.log(logName: name, data: data);
    if (showConsole) {
      if (data.isEmpty) {
        pretty.log(level, name);
      } else {
        pretty.log(level, {'name': name, 'data': data});
      }
    }
  }

  static void _customPrintColor(
    dynamic message, {
    required PrintColor color,
    bool? showConsole,
  }) {
    showConsole ??= logConsole;
    if (showConsole) {
      //ignore: avoid_print
      print('\x1B[${color.code}m$message\x1B[0m');
    }
  }

  static void _customPrintType(
    dynamic message, {
    required PrintType type,
    bool? showConsole,
  }) {
    showConsole ??= logConsole;
    if (showConsole) {
      //ignore: avoid_print
      print('\x1B[${type.color.code}m${type.emoji} $message\x1B[0m');
    }
  }

  static void debug(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintType(
        message,
        type: PrintType.debug,
        showConsole: showConsole,
      );
  static void info(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintType(
        message,
        type: PrintType.info,
        showConsole: showConsole,
      );
  static void warning(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintType(
        message,
        type: PrintType.warning,
        showConsole: showConsole,
      );
  static void error(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintType(
        message,
        type: PrintType.error,
        showConsole: showConsole,
      );
  static void wtf(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintType(
        message,
        type: PrintType.wtf,
        showConsole: showConsole,
      );

  static void console(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintColor(
        message,
        color: PrintColor.regular,
        showConsole: showConsole,
      );

  static void red(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintColor(
        message,
        color: PrintColor.red,
        showConsole: showConsole,
      );

  static void green(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintColor(
        message,
        color: PrintColor.green,
        showConsole: showConsole,
      );
  static void blue(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintColor(
        message,
        color: PrintColor.blue,
        showConsole: showConsole,
      );
  static void yellow(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintColor(
        message,
        color: PrintColor.yellow,
        showConsole: showConsole,
      );
  static void magenta(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintColor(
        message,
        color: PrintColor.magenta,
        showConsole: showConsole,
      );
  static void cyan(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintColor(
        message,
        color: PrintColor.cyan,
        showConsole: showConsole,
      );
  static void grey(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintColor(
        message,
        color: PrintColor.grey,
        showConsole: showConsole,
      );
  static void black(
    dynamic message, {
    bool? showConsole,
  }) =>
      _customPrintColor(
        message,
        color: PrintColor.black,
        showConsole: showConsole,
      );
}
