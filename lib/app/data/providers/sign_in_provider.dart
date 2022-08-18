part of providers;

class SignInProvider implements FormEvent<SignInModel> {
  SignInProvider._();

  static final SignInProvider _instance = SignInProvider._();

  factory SignInProvider() => _instance;

  @override
  Future<String> submit({required SignInModel model}) async {
    String message = '';
    try {
      final response = await Helpers.api.request(
        '/auth/sign-in',
        data: model.toJson(),
        method: ApiMethod.post,
      );
    } on DioError catch (err) {
      message = err.toString();
    } catch (e) {
      rethrow;
    } finally {
      print(message);
    }
    return message;
  }
}
