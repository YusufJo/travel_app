class DataSourceException implements Exception {
  final Object? innerException;
  final String? _message;
  final StackTrace? _stackTrace;

  const DataSourceException(
      {this.innerException, String? message, StackTrace? stackTrace})
      : _message = message,
        _stackTrace = stackTrace;

  @override
  String toString() {
    final String errorMessage = _message ?? 'Unknown reason';
    final String exception = innerException != null ? ', $innerException' : '';
    final String stackTrace =
        _stackTrace != null ? ', Stack trace: $_stackTrace' : '';
    return '$DataSourceException:<$errorMessage$exception$stackTrace>';
  }
}
