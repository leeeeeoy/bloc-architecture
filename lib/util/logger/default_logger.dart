import 'dart:convert';
import 'dart:developer';

import 'package:logger/logger.dart';

abstract class Log {
  static const int lineLength = 500;

  static final logger = Logger(
    output: DeveloperOutput(),
    printer: PrefixPrinter(
      PrettyPrinter(
        stackTraceBeginIndex: 1,
        methodCount: 2,
        lineLength: lineLength,
        noBoxingByDefault: true,
        printEmojis: false,
        colors: false,
      ),
    ),
  );

  static final loggerNoStack = Logger(
    output: DeveloperOutput(),
    printer: PrefixPrinter(
      PrettyPrinter(
        methodCount: 0,
        noBoxingByDefault: true,
        lineLength: lineLength,
        printEmojis: false,
        colors: false,
      ),
    ),
  );

  static void d(
    dynamic message,
  ) =>
      loggerNoStack.d(message);

  static void i(
    dynamic message,
  ) =>
      loggerNoStack.i(message);

  static void w(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      logger.w(message, error, stackTrace);

  static void e(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      logger.e(message, error, stackTrace);

  static String toPrettyJson(Map jsonMap) {
    try {
      JsonEncoder encoder = const JsonEncoder.withIndent('   ');

      return encoder.convert(jsonMap);
    } catch (_) {
      return jsonMap.toString();
    }
  }
}

class DeveloperOutput extends LogOutput {
  @override
  void output(OutputEvent event) => event.lines.forEach(log);
}
