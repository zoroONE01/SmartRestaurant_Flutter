library exceptions;

import 'package:dio/dio.dart';

part 'bad_request_exception.dart';

part 'conflict_exception.dart';

part 'deadline_exceeded_exception.dart';

part 'forbidden_exception.dart';

part 'internal_server_error_exception.dart';

part 'no_internet_connection_exception.dart';

part 'not_found_exception.dart';

part 'unauthorized_exception.dart';

class Exceptions {
  Exceptions._();

  static BadRequestException badRequest(RequestOptions requestOptions) =>
      BadRequestException(requestOptions);

  static ConflictException conflict(RequestOptions requestOptions) =>
      ConflictException(requestOptions);

  static DeadlineExceededException deadlineExceeded(
          RequestOptions requestOptions) =>
      DeadlineExceededException(requestOptions);

  static InternalServerErrorException internetServerError(
          RequestOptions requestOptions) =>
      InternalServerErrorException(requestOptions);

  static NoInternetConnectionException noInternetConnection(
          RequestOptions requestOptions) =>
      NoInternetConnectionException(requestOptions);

  static NotFoundException notFound(RequestOptions requestOptions) =>
      NotFoundException(requestOptions);

  static UnauthorizedException unauthorized(RequestOptions requestOptions) =>
      UnauthorizedException(requestOptions);

  static ForbiddenException forbidden(RequestOptions requestOptions) =>
      ForbiddenException(requestOptions);
}
