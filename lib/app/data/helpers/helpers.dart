library helpers;

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

part 'hive_box_helper.dart';

part 'smart_restaurant_api_helper.dart';

class Helpers {
  static HiveBoxHelper get hive => HiveBoxHelper();

  static SmartRestaurantApiHelper get api => SmartRestaurantApiHelper();
}
