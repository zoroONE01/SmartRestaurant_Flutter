part of providers;

abstract class SignUpProviderBase {
  Future<List<String>?> submit({required SignUpModel model});

  Future<bool> validPhone({required String model});

  Future<bool> validUsername({required String model});
}

class SignUpProvider implements SignUpProviderBase {
  SignUpProvider._();

  static final SignUpProvider _instance = SignUpProvider._();

  factory SignUpProvider() => _instance;

  @override
  Future<List<String>?> submit({required SignUpModel model}) async {
    try {
      final response = await Helpers.api.request(
        '/auth/sign-up/save-user',
        data: model.toJson(),
        method: ApiMethod.post,
      );
      return (response.data ?? [])
          .map((json) => SignInModel.fromJson(json))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> validPhone({required String model}) async {
    try {
      final response = await Helpers.api.request(
        '/auth/sign-up/valid',
        params: {'phone': model},
      );
      return response.data ??= false;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> validUsername({required String model}) async {
    try {
      final response = await Helpers.api.request(
        '/auth/sign-up/valid',
        params: {'username': model},
      );
      return response.data ??= false;
    } catch (e) {
      rethrow;
    }
  }
}
