class GlobalException implements Exception {
  final String message;
  GlobalException([this.message = "An error ocurred"]);
  @override
  String toString() => message;

  static final nullInputException = GlobalException("Fields cannot be null");
  static final timeoutException = GlobalException("Timeout exception");
  static final connectionException = GlobalException("Connection exception");
}
