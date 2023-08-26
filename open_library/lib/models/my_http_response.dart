class MySuccess<TData> {
  final int statusCode;
  final TData data;

  const MySuccess({required this.statusCode, required this.data});
}

class MyHttpResponse<TData> {
  final MySuccess<TData> success;

  MyHttpResponse({required this.success});
}

class MyHttpException implements Exception {
  final int statusCode;
  final String type;
  final String message;

  const MyHttpException(
      {required this.statusCode, required this.type, required this.message});

  @override
  String toString() {
    return message;
  }
}
