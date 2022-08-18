library helpers;

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:smart_restaurant_flutter/app/data/exceptions/exceptions.dart';


part 'smart_restaurant_api_helper.dart';

class Helpers {
  Helpers._();

  static SmartRestaurantApiHelper get api => SmartRestaurantApiHelper();
}
