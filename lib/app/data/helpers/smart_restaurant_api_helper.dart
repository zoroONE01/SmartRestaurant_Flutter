part of helpers;

enum ApiMethod { get, post, put, detete }

class SmartRestaurantApiHelper {
  SmartRestaurantApiHelper._();

  static final SmartRestaurantApiHelper _instance =
      SmartRestaurantApiHelper._();

  factory SmartRestaurantApiHelper() => _instance;
  final Dio _dio = Dio()
    ..options.baseUrl = 'http://localhost:8080/smart-restaurant'
    ..options.connectTimeout = 3000
    ..options.receiveTimeout = 3000
    ..interceptors.addAll([
      // CommonInterceptor(),
      // LogInterceptor(responseBody: true, requestBody: true),
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final box = await Hive.openBox('DATA');
          final String? accessToken = await box.get('access_token');
          if (accessToken != null && accessToken.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          box.close();
          return handler.next(options);
        },
        onError: (err, handler) async {
          switch (err.type) {
            case DioErrorType.connectTimeout:
            case DioErrorType.sendTimeout:
            case DioErrorType.receiveTimeout:
              throw Exceptions.deadlineExceeded(err.requestOptions);
            case DioErrorType.response:
              switch (err.response?.statusCode) {
                case 400:
                  throw Exceptions.badRequest(err.requestOptions);
                case 401:
                  throw Exceptions.forbidden(err.requestOptions);
                case 403:
                  final box = await Hive.openBox('DATA');
                  if (err.response?.statusCode == 403) {
                    try {
                      final String? refreshToken = box.get('refresh_token');
                      await Helpers.api.request(
                        '/auth/refresh_token',
                        method: ApiMethod.post,
                        data: {
                          'refresh_token': refreshToken,
                        },
                      ).then((value) async {
                        if (value.statusCode == 201) {
                          box.put('refresh_token', value.data['refresh_token']);
                          box.put('access_token', value.data['access_token']);
                          err.requestOptions.headers["Authorization"] =
                              'Bearer ${box.get('access_token')}';
                          Helpers.api
                              .setHeader(header: err.requestOptions.headers);
                          Helpers.api
                              .setMethod(method: err.requestOptions.method);
                          final request = await Helpers.api.request(
                            err.requestOptions.path,
                            params: err.requestOptions.queryParameters,
                          );
                          return handler.resolve(
                            request,
                          );
                        }
                      });
                    } catch (e) {
                      rethrow;
                    } finally {
                      box.close();
                    }
                  }
                  throw Exceptions.forbidden(err.requestOptions);
                case 404:
                  throw Exceptions.notFound(err.requestOptions);
                case 409:
                  throw Exceptions.conflict(err.requestOptions);
                case 500:
                  throw Exceptions.internetServerError(err.requestOptions);
              }
              break;
            case DioErrorType.cancel:
              break;
            case DioErrorType.other:
              throw Exceptions.noInternetConnection(err.requestOptions);
          }
        },
      )
    ]);

  final httpMethods = {
    ApiMethod.get: 'GET',
    ApiMethod.post: 'POST',
    ApiMethod.put: 'PUT',
    ApiMethod.detete: 'DELETE',
  };

  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.removeAt(0);
    _dio.interceptors.add(interceptor);
  }

  void setHeader({Map<String, dynamic>? header}) {
    _dio.options.headers = header;
  }

  void setMethod({String? method}) {
    _dio.options.method = method ?? httpMethods[ApiMethod.get]!;
  }

  Future<Response> request(
    String path, {
    ApiMethod? method,
    Map<String, dynamic>? params,
    data,
  }) async {
    try {
      return await _dio.request(
        path,
        options: Options(
          method: httpMethods[method] ?? _dio.options.method,
        ),
        queryParameters: params,
        data: FormData.fromMap(data),
      );
    } catch (e) {
      rethrow;
    }
  }
}
