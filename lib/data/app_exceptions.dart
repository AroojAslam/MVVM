class AppExceptions implements Exception {
  final String? _message;
  final String? _prefix;

  AppExceptions([this._prefix, this._message]);

  @override
  String toString() {
    // if (kDebugMode) {
    //   print("$_prefix$_message");
    // }
    return "$_message";
  }
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super("Error During Communication:: ", message);
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message])
      : super("Invalid Request:: ", message);
}

class UnauthorisedException extends AppExceptions {
  UnauthorisedException([String? message])
      : super("Unauthorised:: ", message);
}

class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message])
      : super("Invalid Input:: ", message);
}

class InternalServerError extends AppExceptions {
  InternalServerError([String? message])
      : super("Internal Server Error:: ", message);
}

class TimeoutException extends AppExceptions {
  TimeoutException([String? message])
      : super("Connection Timed out:: ", message);
}

class DioExceptionError extends AppExceptions {
  DioExceptionError([String? message])
      : super("Error occurred due to:: ", message);
}
