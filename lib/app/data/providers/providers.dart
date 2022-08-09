library providers;

import 'package:smart_restaurant_flutter/app/data/models/account.dart';
import 'package:smart_restaurant_flutter/app/data/models/models.dart';
import 'package:smart_restaurant_flutter/app/data/models/profile.dart';

import '../helpers/helpers.dart';

part 'account_provider.dart';

part 'profile_provider.dart';

class Providers {
  static AccountProvider get account => AccountProvider();

  static ProfileProvider get profile => ProfileProvider();

}

abstract class ModelProvider<T extends Models> {

  Future<T?> getById({required int id});

  Future<List<T>?> getAll();
}
