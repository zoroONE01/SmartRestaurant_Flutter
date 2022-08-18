part of exceptions;

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);
  
  @override
  String toString() {
    return 'Tài khoản hoặc mật khẩu không chính xác';
  }
}
