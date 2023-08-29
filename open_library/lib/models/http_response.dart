class Success<TData> {
  final int statusCode;
  final TData data;

  const Success({required this.statusCode, required this.data});
}

class HttpResponse<TData> {
  final Success<TData> success;

  HttpResponse({required this.success});
}

class HttpException implements Exception {
  final int statusCode;
  final String type;
  final String message;

  const HttpException(
      {required this.statusCode, required this.type, required this.message});

  @override
  String toString() {
    return message;
  }
}
