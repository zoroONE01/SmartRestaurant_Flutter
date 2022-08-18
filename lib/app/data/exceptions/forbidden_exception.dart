part of exceptions;

class ForbiddenException extends DioError {
  ForbiddenException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Access denied';
  }
}
