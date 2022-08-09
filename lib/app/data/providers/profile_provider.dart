part of providers;

class ProfileProvider extends ModelProvider<Profile> {
  ProfileProvider._();

  static final ProfileProvider _instance = ProfileProvider._();

  factory ProfileProvider() => _instance;

  @override
  Future<List<Profile>?> getAll() async {
    try {
      final response = await Helpers.api.request(
        'path',
        method: ApiMethod.get,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Profile?> getById({required int id}) async {
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
}
