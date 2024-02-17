import 'dart:developer';

class Logger {
  
  // static void write(String text, {bool isError = false}) {
  //   log('** $text [$isError]');
  // }
  static void printWarning(String text) {
    log("===========================================================================");
    log('\x1B[33m$text\x1B[0m');
  }

  static void printError(String text) {
    log("===========================================================================");
    log('\x1B[31m$text\x1B[0m');
  }

  static void printInfo(String text) {
    log("===========================================================================");
    log('\x1B[34m$text\x1B[0m');
  }

  static void printSuccess(String text) {
    log("===========================================================================");
    log('\x1B[32m$text\x1B[0m');
  }
}