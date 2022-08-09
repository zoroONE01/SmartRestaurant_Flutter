part of helpers;

enum ApiMethod { get, post, put, detete }

class SmartRestaurantApiHelper {
  SmartRestaurantApiHelper._();

  static final SmartRestaurantApiHelper _instance =
      SmartRestaurantApiHelper._();

  factory SmartRestaurantApiHelper() => _instance;

  final Dio _dio = Dio()
    ..options.baseUrl = ''
    ..options.connectTimeout = 3000
    ..options.receiveTimeout = 3000
    ..interceptors.add(
      Interceptor(),
    );

  final httpMethods = {
    ApiMethod.get: 'GET',
    ApiMethod.post: 'POST',
    ApiMethod.put: 'PUT',
    ApiMethod.detete: 'DELETE',
  };

  void setHeader(Map<String, dynamic>? header) {
    _dio.options.headers = header;
  }

  Future<Response> request(String path,
      {ApiMethod method = ApiMethod.get,
      Map<String, dynamic>? params,
      data}) async {
    try {
      return _dio.request(
        path,
        options: Options(
          method: httpMethods[method],
        ),
        queryParameters: params,
        data: data,
      );
    } catch (e) {
      rethrow;
    }
  }
}
