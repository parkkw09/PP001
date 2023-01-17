import 'package:logger/logger.dart';

class Log {

  Log._privateConstructor();

  static void d(String message) {
    Logger().d(message);
  }

  static void e(String message) {
    Logger().e(message);
  }
}