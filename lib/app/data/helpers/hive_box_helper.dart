part of helpers;

class HiveBoxHelper {
  HiveBoxHelper._() {
    _box = Hive.openLazyBox('DATA') as Box;
  }

  static final HiveBoxHelper _instance = HiveBoxHelper._();

  factory HiveBoxHelper() => _instance;

  late final Box _box;

  // void init() {
  //   _box = Hive.openLazyBox('DATA') as Box;
  // }

  void dispose() {
    _box.close();
  }
}
