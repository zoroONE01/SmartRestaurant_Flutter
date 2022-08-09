part of providers;

class AccountProvider implements ModelProvider<Account> {
  AccountProvider._();

  static  final AccountProvider _instance= AccountProvider._();

  factory AccountProvider() => _instance;

  @override
  Future<Account?> getById({required int id}) async {
    try {
      final response = await Helpers.api.request(
        'path',
        method: ApiMethod.get,
        params: {'id': id},
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Account>?> getAll() async {
    try {
      final response = await Helpers.api.request(
        'path',
        method: ApiMethod.get,
      );
      return (response.data ?? [])
          .map((json) => Account.fromJson(json))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
